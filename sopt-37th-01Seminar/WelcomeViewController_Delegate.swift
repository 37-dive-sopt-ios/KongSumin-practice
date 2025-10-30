//
//  WelcomeViewController_Delegate.swift
//  sopt-37th-01Seminar
//
//  Created by sumin Kong on 10/18/25.
//

import Foundation
import UIKit


protocol WelcomeReloginDelegate: AnyObject {//AnyObject 안 붙이면 오류 뜰 수 있음.
    func retryLogin(didTapReloginWith message: String)
}


final class WelcomeViewController_Delegate: UIViewController {
    
    var id: String?
    
    weak var delegate: WelcomeReloginDelegate?//선언만 해두고 있을수도있고 없을 수도 있음.
    
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 112, y: 87, width: 150, height: 150))
        imageView.image = UIImage(named: "character")
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 140, y: 295, width: 95, height: 60))
        label.text = "???님 \n반가워요!"
        label.font = UIFont(name: "Pretendard-ExtraBold", size: 25)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    private var goHomeButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 426, width: 335, height: 58))
        button.backgroundColor = UIColor(named: "primary_orange")
        button.setTitle("메인으로", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
        return button
    }()
    
    private lazy var backToLoginButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 498, width: 335, height: 58))
        button.backgroundColor = .grey200
        button.setTitle("다시 로그인하기", for: .normal)
        button.setTitleColor(UIColor(red: 172/255, green: 176/255, blue: 185/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 18)
//        button.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        button.addTarget(self, action: #selector(backButtonDidTap), for: .touchUpInside)
        
        return button
    }()
    
    

    func bindID() {
        if let id = id{
            if id.isEmpty{
                self.welcomeLabel.text = "로그인을 해주세요!"
            }else {
                self.welcomeLabel.text = "\(id)님 반가워요!"
            }
        }
    }

    
    @objc
    private func backButtonDidTap(){
        delegate?.retryLogin(didTapReloginWith: "다시 로그인 버튼 클릭!")//옵셔널 체이닝 - 있으면 실행, 없으면 안 함
        
        
        
        if self.navigationController == nil{
            self.dismiss(animated: true)
        }else{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setLayout()
        bindID()
    }
    
    private func setLayout() {
        [logoImageView, welcomeLabel, goHomeButton, backToLoginButton].forEach {
//            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
}
