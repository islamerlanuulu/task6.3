//
//  ThirdViewController.swift
//  task6.3
//
//  Created by Islam Erlan Uulu on 27/4/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let fon3: UIImageView = {
        let fon3 = UIImageView()
        fon3.image = UIImage(named: "fon2")
        return fon3
    }()
    private let forgotPassword2: UILabel = {
        var forgotPassword2 = UILabel()
        forgotPassword2.text = "Forgot Password"
        forgotPassword2.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        forgotPassword2.font = UIFont(name: "Helvetica Neue", size: 24)
        return forgotPassword2
    }()
    
    
    private let labelEnterEmail: UILabel = {
        var labelEmail = UILabel()
        labelEmail.text = "Enter your emaill"
        labelEmail.textColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        labelEmail.font = UIFont(name: "System", size: 18)
        
        return labelEmail
        
    }()
    private let emailTF3: UITextField = {
        let emailTF3 = UITextField()
        emailTF3.placeholder = "   Email"
        emailTF3.backgroundColor = .white
        emailTF3.layer.borderColor = UIColor.black.cgColor
        emailTF3.layer.borderWidth = 1
        emailTF3.layer.cornerRadius = 6
        return  emailTF3
    }()
    
    private let sendOTP: UIButton = {
        let sendOTP = UIButton()
        sendOTP.setTitle("Send OTP", for: .normal)
        sendOTP.layer.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.7137254902, blue: 0.9647058824, alpha: 1)
        sendOTP.layer.cornerRadius = 6
        return sendOTP
    }()
    
    private let chooseAnotherMethod: UILabel = {
        let chooseAnotherMethod = UILabel()
        chooseAnotherMethod.text = "Don’t have account?"
        chooseAnotherMethod.textColor = #colorLiteral(red: 0.3803921569, green: 0.3803921569, blue: 0.3803921569, alpha: 1)
        chooseAnotherMethod.font = UIFont(name: "System", size: 16)
        
        
        return chooseAnotherMethod
    }()
    private let needHelp: UIButton = {
        let needHelp =  UIButton()
        needHelp.setTitle("Need Help?", for: .normal)
        needHelp.titleLabel?.font = needHelp.titleLabel?.font.withSize(14)
        needHelp.tintColor = #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8509803922, alpha: 1)
        return needHelp
    }()
    
    var email: String?
    
    override func viewDidLoad() {
        
        
        
        view.addSubview(fon3)
        view.addSubview(forgotPassword2)
        view.addSubview(labelEnterEmail)
        view.addSubview(emailTF3)
        view.addSubview(chooseAnotherMethod)
        view.addSubview(needHelp)
        view.addSubview(sendOTP)
        
        
        emailTF3.text = email
        
        super.viewDidLoad()
        view.backgroundColor = .black
        outletUpdate()
        
    }
    
    private func outletUpdate() {
        
        fon3.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(0)
            make.height.equalTo(200)
        }
        
        forgotPassword2.snp.makeConstraints { make in
            make.top.equalTo(fon3.snp.bottom).offset(3)
            make.centerX.equalToSuperview()
            
        }
        
        
        labelEnterEmail.snp.makeConstraints { make in
            make.top.equalTo(forgotPassword2.snp.bottom).offset(61)
            make.leading.equalTo(30)
        }
        
        
        emailTF3.snp.makeConstraints { make in
            make.top.equalTo(labelEnterEmail.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(48)
        }
        
        
        chooseAnotherMethod.snp.makeConstraints { make in
            make.top.equalTo(emailTF3.snp.bottom).offset(11)
            make.leading.equalToSuperview().inset(49.32)
        }
        
        
        needHelp.snp.makeConstraints { make in
            make.top.equalTo(emailTF3.snp.bottom).offset(8)
            make.leading.equalTo(chooseAnotherMethod.snp.trailing).offset(4)
        }
        
        
        
        sendOTP.snp.makeConstraints { make in
            make.top.equalTo(chooseAnotherMethod.snp.bottom).offset(22)
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
        }
        
        
        
    }
}
