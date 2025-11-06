//
//  LoginView.swift
//  sopt-37th-01Seminar
//
//  Created by sumin Kong on 11/1/25.
//

import UIKit
import SnapKit

final class LoginView: UIView {
    override init(frame: CGRect) {
            super.init(frame: frame)
        }
        

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("SecondView Error!")
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "동네라서 가능한 모든것\n당근에서 가까운 이웃과 함께해요."
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont(name: "Pretendard-Bold", size: 18)
        return label
    }()
        
    let idTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "아이디를 입력해주세요"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    }()
        
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "비밀번호를 입력해주세요"
        textField.font = UIFont(name: "Pretendard-SemiBold", size: 14)
        textField.backgroundColor = UIColor(red: 221/255, green: 222/255, blue: 227/255, alpha: 1)
        return textField
    }()
        
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        button.setTitle("로그인하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        return button
    }()
    
    
    func setLayOut(){
        [titleLabel, idTextField,passwordTextField, loginButton].forEach {
//            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview($0)
        }
        
//        NSLayoutConstraint.activate([titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                                     titleLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 163)])
//
//        NSLayoutConstraint.activate([idTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                                     idTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 72),
//                                     idTextField.widthAnchor.constraint(equalToConstant: 335),
//                                     idTextField.heightAnchor.constraint(equalToConstant: 52)])
//
//        NSLayoutConstraint.activate([passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                                     passwordTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 130),
//                                     passwordTextField.widthAnchor.constraint(equalToConstant: 335),
//                                     passwordTextField.heightAnchor.constraint(equalToConstant: 52)])
//
//        NSLayoutConstraint.activate([loginButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 217),
//                                     loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//                                     loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//                                     loginButton.heightAnchor.constraint(equalToConstant: 58)])
        
        titleLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(163)
        }
        
        idTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(72)
            $0.leading.equalToSuperview().offset(20)
                        $0.trailing.equalToSuperview().offset(-20)
                        $0.height.equalTo(52)
        }
        passwordTextField.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(130)
            $0.leading.equalToSuperview().offset(20)
                        $0.trailing.equalToSuperview().offset(-20)
                        $0.height.equalTo(52)
        }
        loginButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(217)
            $0.leading.equalToSuperview().offset(20)
                        $0.trailing.equalToSuperview().offset(-20)
                        $0.height.equalTo(58)
        }
        
    }
    
    
}
#Preview {
    LoginView()
}
