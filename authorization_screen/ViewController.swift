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

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayouts()
    }

    // MARK: - SetupHierarchy

    private func  setupHierarchy() {
        view.insertSubview(imageView, at: 0)
    }


    // MARK: - SetupLayouts

    private func setupLayouts() {

        imageView.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }

    }

}

