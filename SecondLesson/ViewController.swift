//
//  ViewController.swift
//  SecondLesson
//
//  Created by Артем Коробкин on 20/6/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var firstImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "first")
        return view
    }()
    
    private lazy var firstText: UITextView = {
        let view = UITextView()
        view.text = "Connect easily with your family and friends over countries"
        return view
    }()
    
    private let startButton: UIButton = {
        let view = UIButton()
        view.setTitle("Start Messaging", for: .normal)
        view.backgroundColor = #colorLiteral(red: 0.002148041269, green: 0.1758048832, blue: 0.8900678158, alpha: 1)
        view.layer.cornerRadius = 30
        view.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(firstImage)
        firstImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(250)
        }
        view.addSubview(firstText)
        firstText.snp.makeConstraints { make in
            make.top.equalTo(firstImage.snp.bottom).offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(280)
            make.height.equalTo(90)
        }

        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.top.equalTo(firstText.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(327)
            make.height.equalTo(52)
        }
    }
    
    @objc private func tappedStartButton(sender: UIButton) {
        let vc = SecondViewController()
        
        //vc.text.text = ""
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

