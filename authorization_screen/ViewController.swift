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

    private lazy var leftViewInStack: UIView = {
        let leftView = UIView()
        leftView.backgroundColor = .gray
        leftView.translatesAutoresizingMaskIntoConstraints = false
        return leftView
    }()

    private lazy var connectWithLabel: UILabel = {
        let connectLabel = UILabel()
        connectLabel.text = "or connect with"
        connectLabel.textColor = .white
        connectLabel.textAlignment = .center
        connectLabel.font = UIFont.systemFont(ofSize: 12)
        connectLabel.translatesAutoresizingMaskIntoConstraints = false
        return connectLabel
    }()

    private lazy var rightViewInStack: UIView = {
        let rightView = UIView()
        rightView.backgroundColor = .gray
        rightView.translatesAutoresizingMaskIntoConstraints = false
        return rightView
    }()

    private lazy var connectWithStackView: UIStackView = {
        let connectStackView = UIStackView()
        connectStackView.axis = .horizontal
        connectStackView.distribution = .fillEqually
        connectStackView.spacing = 10
        connectStackView.alignment = .center
        connectStackView.translatesAutoresizingMaskIntoConstraints = false
        return connectStackView
    }()

    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.backgroundColor = UIColor(red: 45/255, green: 173/255, blue: 252/255, alpha: 1)
        facebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        facebookButton.setImage(UIImage(named: "facebook"), for: .normal)
        facebookButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.shadowColor = UIColor.black.cgColor
        facebookButton.layer.shadowOpacity = 0.4
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 10
        facebookButton.layer.masksToBounds = false
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton()
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(.white, for: .normal)
        twitterButton.backgroundColor = UIColor(red: 38/255, green: 75/255, blue: 148/255, alpha: 1)
        twitterButton.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        twitterButton.setImage(UIImage(named: "twitter"), for: .normal)
        twitterButton.clipsToBounds = true
        twitterButton.layer.cornerRadius = 20
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.4
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.masksToBounds = false
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.cornerRadius = 17
        return twitterButton
    }()

    private lazy var socialButtonStackView: UIStackView = {
        let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.spacing = 10
        buttonStack.distribution = .fillEqually
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        return buttonStack
    }()

    private lazy var haveAccountLabel: UILabel = {
        let question = UILabel()
        question.text = "Dont have account?"
        question.textColor = .gray
        question.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return question
    }()

    private lazy var signUpButton: UIButton = {
        let signUpButton = UIButton()
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        signUpButton.setTitleColor(UIColor(red: 161/255, green: 132/255, blue: 181/255, alpha: 1), for: .normal)
        return signUpButton
    }()

    private lazy var signUpStackView: UIStackView = {
        let signUpStackView = UIStackView()
        signUpStackView.axis = .horizontal
        signUpStackView.distribution = .fillProportionally
        signUpStackView.spacing = 15
        signUpStackView.translatesAutoresizingMaskIntoConstraints = false
        return signUpStackView
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
        view.addSubview(connectWithStackView)
        connectWithStackView.addArrangedSubview(leftViewInStack)
        connectWithStackView.addArrangedSubview(connectWithLabel)
        connectWithStackView.addArrangedSubview(rightViewInStack)
        view.addSubview(socialButtonStackView)
        socialButtonStackView.addArrangedSubview(facebookButton)
        socialButtonStackView.addArrangedSubview(twitterButton)
        view.addSubview(signUpStackView)
        signUpStackView.addArrangedSubview(haveAccountLabel)
        signUpStackView.addArrangedSubview(signUpButton)
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

        connectWithStackView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
            make.bottom.equalTo(view.snp.bottom).multipliedBy(0.75)
        }

        leftViewInStack.snp.makeConstraints { make in
            make.height.equalTo(1)
        }

        rightViewInStack.snp.makeConstraints { make in
            make.height.equalTo(1)
        }

        facebookButton.snp.makeConstraints{ make in
            make.height.equalTo(33)
        }

        twitterButton.snp.makeConstraints{ make in
            make.height.equalTo(33)
        }

        socialButtonStackView.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(connectWithStackView.snp.bottom).multipliedBy(1.09)
            make.width.equalTo(view.snp.width).multipliedBy(0.8)
        }

        signUpStackView.snp.makeConstraints{ make in
            make.centerX.equalTo(view)
            make.bottom.equalTo(socialButtonStackView.snp.bottom).multipliedBy(1.1)
        }
    }

}

