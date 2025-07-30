//
//  AuthViewController.swift
//  TrainingPlan
//
//  Created by Nikita Khon on 30.07.2025.
//

import UIKit
import SnapKit

final class AuthViewController: UIViewController {
    
    // MARK: - Visual Components
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = .runvilleLogo
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var emailTextField = PaddedTextField(placeholder: "Email")
    private lazy var passwordTextField = PaddedTextField(placeholder: "Password")
    
    private lazy var confirmButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .mainGreen
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.layer.cornerRadius = 16
        button.layer.masksToBounds = true
//        button.addTarget(self, action: #selector(filterButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        view.backgroundColor = .mainBackground
        
        addSubviews()
        addConstraints()
    }
    
    private func addSubviews() {
        view.addSubviews(
            logoImageView,
            emailTextField,
            passwordTextField,
            confirmButton)
    }
    
    private func addConstraints() {
        logoImageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(96)
            $0.bottom.equalTo(view.snp.centerY).offset(-60)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(logoImageView.snp.bottom).offset(60)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(60)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(emailTextField.snp.bottom).offset(20)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(60)
        }
        
        confirmButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(60)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.height.equalTo(60)
        }
    }
}
