//
//  ViewController.swift
//  task6.3
//
//  Created by Islam Erlan Uulu on 27/4/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let fon1: UIImageView = {
        let fon1 = UIImageView()
        fon1.image = UIImage(named: "fon2")
        return fon1
    }()
    private let welcome: UILabel = {
        var welcome = UILabel()
        welcome.text = "Welcome"
        welcome.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        welcome.font = UIFont(name: "Helvetica Neue", size: 28)
        return welcome
        
    }()
    
    private let loginToYourAccount: UILabel = {
        var LoginToYourAccount = UILabel()
        LoginToYourAccount.text = "Login to your account"
        LoginToYourAccount.textColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        LoginToYourAccount.font = UIFont(name: "System", size: 20)
        return LoginToYourAccount
    }()
    
    private let labelEmail: UILabel = {
        var labelEmail = UILabel()
        labelEmail.text = "Email"
        labelEmail.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelEmail.font = UIFont(name: "System", size: 18)
        
        return labelEmail
        
    }()
    private let emailTF1: UITextField = {
        let emailTF1 = UITextField()
        emailTF1.placeholder = "   Email"
        emailTF1.backgroundColor = .white
        emailTF1.layer.borderColor = UIColor.black.cgColor
        emailTF1.layer.borderWidth = 1
        emailTF1.layer.cornerRadius = 6
        return  emailTF1
    }()
    
    private let labelPass1: UILabel = {
        let labelPass1 = UILabel()
        labelPass1.text = "Password"
        labelPass1.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelPass1.font = UIFont(name: "System", size: 18)
        return labelPass1
    }()
    
    private let passTF1: UITextField = {
        let passTF1 = UITextField()
        passTF1.placeholder = "   Password"
        passTF1.backgroundColor = .white
        passTF1.layer.borderColor = UIColor.black.cgColor
        passTF1.layer.borderWidth = 1
        passTF1.layer.cornerRadius = 6
        passTF1.isSecureTextEntry = true
        return  passTF1
    }()
    private let eyeButton: UIButton = {
        let eyeButton = UIButton()
        eyeButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        eyeButton.tintColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        return eyeButton
    }()
    
    private let forgotPassword : UILabel = {
        let forgotPassword = UILabel()
        forgotPassword.text = "Forgot Password?"
        forgotPassword.textColor = #colorLiteral(red: 0.9176470588, green: 0.262745098, blue: 0.2078431373, alpha: 1)
        forgotPassword.font = UIFont(name: "System", size: 16)
        return forgotPassword
    }()
    
    private let loginButton1: UIButton = {
        let loginButton1 = UIButton()
        loginButton1.setTitle("Login", for: .normal)
        loginButton1.layer.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.7137254902, blue: 0.9647058824, alpha: 1)
        loginButton1.layer.cornerRadius = 6
        return loginButton1
    }()
    
    private let dontHaveAccount: UILabel = {
        let dontHaveAccount = UILabel()
        dontHaveAccount.text = "Don’t have account?"
        dontHaveAccount.textColor = #colorLiteral(red: 0.3803921569, green: 0.3803921569, blue: 0.3803921569, alpha: 1)
        dontHaveAccount.font = UIFont(name: "System", size: 16)
        
        
        return dontHaveAccount
    }()
    private let createNow: UIButton = {
        let createNow =  UIButton()
        createNow.setTitle("Create Now", for: .normal)
        createNow.titleLabel?.font = createNow.titleLabel?.font.withSize(14)
        createNow.tintColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        return createNow
    }()
    
    private let google: UIImageView = {
        let google = UIImageView()
        google.image = UIImage(named: "google")
        return google
    }()
    
    
    private let facebook: UIImageView = {
        let facebook = UIImageView()
        facebook.image = UIImage(named: "facebook")
        return facebook
    }()
    
    private let instagram: UIImageView = {
        let instagram = UIImageView()
        instagram.image = UIImage(named: "instagram")
        return instagram
    }()
    
    
    override func viewDidLoad() {
        
        
        
        view.addSubview(fon1)
        view.addSubview(welcome)
        view.addSubview(loginToYourAccount)
        view.addSubview(labelEmail)
        view.addSubview(emailTF1)
        view.addSubview(labelPass1)
        view.addSubview(passTF1)
        view.addSubview(eyeButton)
        view.addSubview(forgotPassword)
        view.addSubview(loginButton1)
        view.addSubview(dontHaveAccount)
        view.addSubview(createNow)
        view.addSubview(google)
        view.addSubview(facebook)
        view.addSubview(instagram)
        
        
        
        super.viewDidLoad()
        view.backgroundColor = .black
        outletUpdate()
        
    }
    
    private func outletUpdate() {
        
        fon1.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        welcome.snp.makeConstraints { make in
            make.top.equalTo(fon1.snp.bottom).offset(51)
            make.centerX.equalToSuperview()
        }
        
        loginToYourAccount.snp.makeConstraints { make in
            make.top.equalTo(welcome.snp.bottom).offset(-1)
            make.centerX.equalToSuperview()
            
        }
        
        labelEmail.snp.makeConstraints { make in
            make.top.equalTo(welcome.snp.bottom).offset(49)
            make.leading.equalTo(30)
        }
        
        emailTF1.snp.makeConstraints { make in
            make.top.equalTo(welcome.snp.bottom).offset(82)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        labelPass1.snp.makeConstraints { make in
            make.top.equalTo(emailTF1.snp.bottom).offset(10)
            make.leading.equalTo(30)
        }
        
        passTF1.snp.makeConstraints { make in
            make.top.equalTo(emailTF1.snp.bottom).offset(41)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        eyeButton.snp.makeConstraints { make in
            make.top.equalTo(passTF1.snp.top).inset(5)
            make.trailing.equalTo(passTF1.snp.trailing).offset(-15)
            make.height.equalTo(34.33)
        }
        
        forgotPassword.snp.makeConstraints { make in
            make.top.equalTo(passTF1.snp.bottom).offset(7)
            make.leading.equalTo(184)
        }
        
        loginButton1.snp.makeConstraints { make in
            make.top.equalTo(forgotPassword.snp.bottom).offset(28)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        dontHaveAccount.snp.makeConstraints { make in
            make.top.equalTo(loginButton1.snp.bottom).offset(14)
            make.leading.equalToSuperview().inset(49.32)
        }
        
        
        createNow.snp.makeConstraints { make in
            make.top.equalTo(loginButton1.snp.bottom).offset(10)
            make.leading.equalTo(dontHaveAccount.snp.trailing).offset(4)
        }
        
        
        
        
        google.snp.makeConstraints { make in
            make.top.equalTo(dontHaveAccount.snp.bottom).offset(49)
            make.trailing.equalTo(facebook.snp.leading).offset(-42)
            make.width.height.equalTo(31)
        }
        facebook.snp.makeConstraints { make in
            make.top.equalTo(dontHaveAccount.snp.bottom).offset(49)
            make.width.height.equalTo(31)
            make.centerX.equalToSuperview()
        }
        instagram.snp.makeConstraints { make in
            make.top.equalTo(dontHaveAccount.snp.bottom).offset(49)
            make.leading.equalTo(facebook.snp.trailing).offset(42)
            make.width.height.equalTo(31)
        }
        
        loginButton1.addTarget(self, action: #selector(loginbtn), for: .touchUpInside)
        eyeButton.addTarget(self, action: #selector(falseSecury), for: .touchUpInside)
        createNow.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }
    
    @objc func nextVC() {
        
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    
    
    @objc func loginbtn() {
        let _ = passTF1.checkForEmptiness()
        let _ = emailTF1.checkForEmptiness()
    }
    
    @objc func falseSecury() {
        let eye = UIImage(systemName: "eye.slash")
        let fill = UIImage(systemName: "eye.fill")
        
        if eyeButton.imageView?.image == eye {
            passTF1.isSecureTextEntry = false
            eyeButton.setImage(fill, for: .normal)
        } else {
            passTF1.isSecureTextEntry = true
            eyeButton.setImage(eye, for: .normal)
        }
        
    }

}

extension UITextField {
    func checkForEmptiness() -> Bool {
            if self.text?.isEmpty == true {
                self.placeholder = "Заполните, пожалуйста"
                let color: UIColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                self.layer.borderColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
                return false
            } else {
                let color: UIColor =  #colorLiteral(red: 0.6470588446, green: 0.6470588446, blue: 0.6470588446, alpha: 0.4804852214)
                self.layer.borderColor =  #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
                self.placeholder = "Login"
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                return true
            }
    }
}

