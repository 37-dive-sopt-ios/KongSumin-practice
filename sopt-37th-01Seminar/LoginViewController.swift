//
//  LoginViewController.swift
//  sopt-37th-01Seminar
//
//  Created by sumin Kong on 10/11/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Properties

    // 배달의민족 주조색 (하늘색 계열)
    let baeminSkyBlue = UIColor(red: 35/255, green: 200/255, blue: 195/255, alpha: 1.0)
    // 텍스트 필드 배경색 (약간 연한 회색)
    let textFieldBackgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
    // 텍스트 필드 테두리 색상 (더 연한 회색)
    let textFieldBorderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
    
    // MARK: - UI Components
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 20, y: 120, width: self.view.bounds.width - 40, height: 50))
        label.text = "동네라서 가능한 모든 것\n당근에서 가까운 이웃과 함께해요."
        label.font = UIFont(name: "pretendard-Bold", size: 18)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 220, width: self.view.bounds.width - 40, height: 45))
        textField.placeholder = "아이디"
        textField.borderStyle = .none // 기본 borderStyle 제거
        textField.backgroundColor = .grey200
//        UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)  연한 회색 배경
        textField.layer.cornerRadius = 3
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0).cgColor // 더 연한 테두리
        // 텍스트 필드 좌우 패딩 추가
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.rightViewMode = .always
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 20, y: 275, width: self.view.bounds.width - 40, height: 45))
        textField.placeholder = "비밀번호"
        textField.borderStyle = .none // 기본 borderStyle 제거
        textField.isSecureTextEntry = true
        textField.backgroundColor = .grey200
        textField.layer.cornerRadius = 3
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0).cgColor // 더 연한 테두리
        // 텍스트 필드 좌우 패딩 추가
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.rightViewMode = .always
        return textField
    }()
    
   
    lazy var loginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 340, width: self.view.bounds.width - 40, height: 50))
        button.setTitle("로그인하기", for: .normal)
        button.backgroundColor = UIColor(named: "primary_orange")
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 6
        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        return button
    }()
    
    lazy var switchLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 20, y: 390, width: self.view.bounds.width - 40, height: 50))
        label.text = "Switch"
        label.font = UIFont(name: "pretendard-Regular", size: 10)
        label.numberOfLines = 2
        label.textAlignment = .left
        return label
    }()
    
    lazy var loginSwitch: UISwitch = {
        let loginSwitch : UISwitch = UISwitch(frame: CGRect(x: 120, y: 400, width: self.view.bounds.width - 20, height: 50))
        loginSwitch.isOn = false
        loginSwitch.addTarget(self, action: #selector(controllSwitch(_:)), for: .valueChanged)
        return loginSwitch
    }()
    
    
    
    @objc
    private func loginButtonDidTap(){
//        presentToWelcomeVC()
      pushToWelcomeVC()
    }
    
    
    private func presentToWelcomeVC(){
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.id = idTextField.text
//        welcomeViewController.setLabelText(id: idTextField.text)
        self.present(welcomeViewController, animated: true)
        
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.id = idTextField.text
//        welcomeViewController.setLabelText(id: idTextField.text)
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc private func controllSwitch(_ sender: UISwitch){
        switchLabel.text = "Switch is now: \(sender.isOn)"
    }
    

    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setHierarchy()
    }
    
    // MARK: - UI & Layout
    
    private func setUI() {
        view.backgroundColor = .white
    }
    
    private func setHierarchy() {
        let components = [
            titleLabel,
            idTextField,
            passwordTextField,
            loginButton,
            switchLabel,
            loginSwitch
        ]
        
        components.forEach { view.addSubview($0) }
    }
    
}
