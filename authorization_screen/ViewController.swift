//
//  ViewController.swift
//  authorization_screen
//
//  Created by User on 19.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Outlets

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var loginLabel: UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.textAlignment = .center
        loginLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        return loginLabel
    }()

    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.backgroundColor = .white
        loginTextField.placeholder = "Login"
        loginTextField.textAlignment = .left
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 20
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.setLeftIcon(UIImage(named: "user") ?? UIImage(imageLiteralResourceName: ""))
        loginTextField.setRightIcon(UIImage(named: "approve") ?? UIImage(imageLiteralResourceName: ""))
        return loginTextField
    }()

    private lazy var passTextField: UITextField = {
        let passTextField = UITextField()
        passTextField.backgroundColor = .white
        passTextField.placeholder = "Password"
        passTextField.textAlignment = .left
        passTextField.clipsToBounds = true
        passTextField.layer.cornerRadius = 20
        passTextField.translatesAutoresizingMaskIntoConstraints = false
        passTextField.setLeftIcon(UIImage(named: "password") ?? UIImage(imageLiteralResourceName: ""))
        return passTextField
    }()

    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.backgroundColor = UIColor(red: 161/255, green: 132/255, blue: 181/255, alpha: 1)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 20
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.4
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 8
        loginButton.layer.masksToBounds = false
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    private lazy var forgotYourPasswordButton: UIButton = {
        let forgotPassword = UIButton()
        forgotPassword.setTitle("Forgot your password?", for: .normal)
        forgotPassword.setTitleColor(.white, for: .normal)
        forgotPassword.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        return forgotPassword
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayouts()
    }

    // MARK: - SetupHierarchy

    private func  setupHierarchy() {
        view.insertSubview(imageView, at: 0)
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotYourPasswordButton)
    }


    // MARK: - SetupLayouts

    private func setupLayouts() {

        imageView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }

        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.snp.centerY).multipliedBy(0.2)
        }

        loginTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginLabel.snp.centerY).multipliedBy(1.7)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
            make.height.equalTo(40)
        }

        passTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginTextField.snp.centerY).multipliedBy(1.2)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
            make.height.equalTo(40)
        }

        loginButton.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.top.equalTo(passTextField.snp.centerY).multipliedBy(1.4)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
            make.height.equalTo(40)
        }

        forgotYourPasswordButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.centerY).multipliedBy(1.1)
        }

    }

}

