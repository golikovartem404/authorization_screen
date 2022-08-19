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

    }

}

