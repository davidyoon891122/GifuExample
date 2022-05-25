//
//  ViewController.swift
//  GifuExample
//
//  Created by iMac on 2022/05/25.
//

import UIKit
import Gifu
import SnapKit
class ViewController: UIViewController {
    private lazy var gifImageView: GIFImageView = {
        let imageView = GIFImageView()
        imageView.animate(withGIFNamed: "giphy")
        imageView.layer.cornerRadius = 75
        imageView.layer.masksToBounds = true
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }
}

private extension ViewController {
    func setupViews() {
        [
            gifImageView
        ]
            .forEach {
                view.addSubview($0)
            }

        gifImageView.snp.makeConstraints {
            $0.width.height.equalTo(150.0)
            $0.centerY.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
    }
}
