//
//  LoginViewController.swift
//  sopt-37th-01Seminar
//
//  Created by sumin Kong on 10/11/25.
//

import UIKit
import SnapKit


class LoginViewController: UIViewController {
    private let rootView = LoginView()
    public override func loadView() {
        self.view = rootView
    }
    
    lazy var switchLabel: UILabel = {
        let label = UILabel()
        //UILabel(frame: CGRect(x: 20, y: 390, width: self.view.bounds.width - 40, height: 50))
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
        welcomeViewController.id = rootView.idTextField.text
//        welcomeViewController.setLabelText(id: idTextField.text)
        self.present(welcomeViewController, animated: true)
        
    }
    
    private func pushToWelcomeVC() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.id = rootView.idTextField.text
//        welcomeViewController.setLabelText(id: idTextField.text)
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    @objc private func controllSwitch(_ sender: UISwitch){
        switchLabel.text = "Switch is now: \(sender.isOn)"
    }
    

    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rootView.setLayOut()
        setUI()
        setHierarchy()
    }
    
    // MARK: - UI & Layout
    
    private func setUI() {
        view.backgroundColor = .white
    }
    
    private func setHierarchy() {
        let components = [
            rootView.titleLabel,
//            idTextField,
//            passwordTextField,
            rootView.loginButton,
//            switchLabel,
//            loginSwitch
        ]
        
        components.forEach { view.addSubview($0) }
    }
    
}
#Preview {
    LoginViewController()
}
