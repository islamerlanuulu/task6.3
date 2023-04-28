//
//  SecondViewController.swift
//  task6.3
//
//  Created by Islam Erlan Uulu on 27/4/23.
//

import UIKit
import SnapKit
class SecondViewController: UIViewController {
    
    private let fon2: UIImageView = {
        let fon2 = UIImageView()
        fon2.image = UIImage(named: "fon2")
        return fon2
    }()
    private let register: UILabel = {
        var register = UILabel()
        register.text = "Register"
        register.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        register.font = UIFont(name: "Helvetica Neue", size: 28)
        return register
        
    }()
    
    private let creatANewAccount: UILabel = {
        var creatANewAccount = UILabel()
        creatANewAccount.text = "Create a new account"
        creatANewAccount.textColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        creatANewAccount.font = UIFont(name: "System", size: 20)
        return creatANewAccount
    }()
    
    private let labelUsername: UILabel = {
        var labelUsername = UILabel()
        labelUsername.text = "Username"
        labelUsername.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelUsername.font = UIFont(name: "System", size: 18)
        
        return labelUsername
    }()
    private let usernameTF: UITextField = {
        let usernameTF = UITextField()
        usernameTF.placeholder = "   Username"
        usernameTF.backgroundColor = .white
        usernameTF.layer.borderColor = UIColor.black.cgColor
        usernameTF.layer.borderWidth = 1
        usernameTF.layer.cornerRadius = 6
        return  usernameTF
    }()
    
    
    
    private let labelEmail2: UILabel = {
        var labelEmail2 = UILabel()
        labelEmail2.text = "Email"
        labelEmail2.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelEmail2.font = UIFont(name: "System", size: 18)
        
        return labelEmail2
        
    }()
    private let emailTF2: UITextField = {
        let emailTF2 = UITextField()
        emailTF2.placeholder = "   Email"
        emailTF2.backgroundColor = .white
        emailTF2.layer.borderColor = UIColor.black.cgColor
        emailTF2.layer.borderWidth = 1
        emailTF2.layer.cornerRadius = 6
        return  emailTF2
    }()
    
    
    
    private let labelMobileNumber: UILabel = {
        var  labelMobileNumber = UILabel()
        labelMobileNumber.text = " Mobile Number"
        labelMobileNumber.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelMobileNumber.font = UIFont(name: "System", size: 18)
        
        return  labelMobileNumber
    }()
    
    private let mobileNumberTF: UITextField = {
        let mobileNumberTF = UITextField()
        mobileNumberTF.placeholder = "   Mobile Number"
        mobileNumberTF.backgroundColor = .white
        mobileNumberTF.layer.borderColor = UIColor.black.cgColor
        mobileNumberTF.layer.borderWidth = 1
        mobileNumberTF.layer.cornerRadius = 6
        return  mobileNumberTF
    }()
    
    
    
    private let labelPass2: UILabel = {
        let labelPass2 = UILabel()
        labelPass2.text = "Password"
        labelPass2.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelPass2.font = UIFont(name: "System", size: 18)
        return labelPass2
    }()
    
    private let passTF2: UITextField = {
        let passTF2 = UITextField()
        passTF2.placeholder = "   Password"
        passTF2.backgroundColor = .white
        passTF2.layer.borderColor = UIColor.black.cgColor
        passTF2.layer.borderWidth = 1
        passTF2.layer.cornerRadius = 6
        passTF2.isSecureTextEntry = true
        return  passTF2
    }()
    
    
    
    private let loginButton2: UIButton = {
        let loginButton2 = UIButton()
        loginButton2.setTitle("Login", for: .normal)
        loginButton2.layer.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.7137254902, blue: 0.9647058824, alpha: 1)
        loginButton2.layer.cornerRadius = 6
        return loginButton2
    }()
    
    
    private let eyeButton2: UIButton = {
        let eyeButton = UIButton()
        eyeButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        eyeButton.tintColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)
        return eyeButton
    }()
    
    override func viewDidLoad() {
        
        
        
        view.addSubview(fon2)
        view.addSubview(register)
        view.addSubview(creatANewAccount)
        view.addSubview(labelUsername)
        view.addSubview(usernameTF)
        view.addSubview(labelEmail2)
        view.addSubview(emailTF2)
        view.addSubview(labelMobileNumber)
        view.addSubview(mobileNumberTF)
        view.addSubview(labelPass2)
        view.addSubview(passTF2)
        view.addSubview(loginButton2)
        view.addSubview(eyeButton2)
        
        
        
        super.viewDidLoad()
        view.backgroundColor = .black
        outletUpdate2()
        
    }
    
    
    
    
    private func outletUpdate2() {
        
        fon2.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        register.snp.makeConstraints { make in
            make.top.equalTo(fon2.snp.bottom).offset(-1)
            make.centerX.equalToSuperview()
        }
        
        creatANewAccount.snp.makeConstraints { make in
            make.top.equalTo(register.snp.bottom).offset(3)
            make.centerX.equalToSuperview()
            
        }
        
        labelUsername.snp.makeConstraints { make in
            make.top.equalTo(creatANewAccount.snp.bottom).offset(18)
            make.leading.equalTo(30)
        }
        
        usernameTF.snp.makeConstraints { make in
            make.top.equalTo(labelUsername.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        labelEmail2.snp.makeConstraints { make in
            make.top.equalTo(usernameTF.snp.bottom).offset(6)
            make.leading.equalTo(30)
        }
        
        emailTF2.snp.makeConstraints { make in
            make.top.equalTo(labelEmail2.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        labelMobileNumber.snp.makeConstraints { make in
            make.top.equalTo(emailTF2.snp.bottom).offset(6)
            make.leading.equalTo(30)
        }
        mobileNumberTF.snp.makeConstraints { make in
            make.top.equalTo(labelMobileNumber.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        
        labelPass2.snp.makeConstraints { make in
            make.top.equalTo(mobileNumberTF.snp.bottom).offset(6)
            make.leading.equalTo(30)
        }
        
        
        passTF2.snp.makeConstraints { make in
            make.top.equalTo(labelPass2.snp.bottom).offset(6)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        
        loginButton2.snp.makeConstraints { make in
            make.top.equalTo(passTF2.snp.bottom).offset(26)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        eyeButton2.snp.makeConstraints { make in
            make.top.equalTo(passTF2.snp.top).inset(5)
            make.trailing.equalTo(passTF2.snp.trailing).offset(-15)
            make.height.equalTo(34.33)
        }
        
        
        eyeButton2.addTarget(self, action: #selector(falseSecury2), for: .touchUpInside)
        loginButton2.addTarget(self, action: #selector(loginbtn2), for: .touchUpInside)
        }
    
    
    @objc func falseSecury2() {
        let eye = UIImage(systemName: "eye.slash")
        let fill = UIImage(systemName: "eye.fill")
        
        if eyeButton2.imageView?.image == eye {
            passTF2.isSecureTextEntry = false
            eyeButton2.setImage(fill, for: .normal)
        } else {
            passTF2.isSecureTextEntry = true
            eyeButton2.setImage(eye, for: .normal)
        }
        
    }
        @objc func loginbtn2() {
            let pass = passTF2.checkForEmptiness()
            let email = emailTF2.checkForEmptiness()
            let userName = usernameTF.checkForEmptiness()
            let mobile = mobileNumberTF.checkForEmptiness()
            if pass && email && userName && mobile {
                let vc = ThirdViewController()
                vc.email = emailTF2.text
                navigationController?.pushViewController(vc, animated: true)
                
            }
    }
}
