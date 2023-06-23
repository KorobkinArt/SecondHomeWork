//
//  SecondViewController.swift
//  SecondLesson
//
//  Created by Артем Коробкин on 23/6/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var firstText: UILabel = {
        let view = UILabel()
        view.text = "Enter Your Phone Number"
        view.font = .systemFont(ofSize: 24, weight: .semibold)
        view.textColor = .black
        return view
    }()
    
    private lazy var secondText: UILabel = {
        let view = UILabel()
        view.text = "Please confirm your country code and enter your phone number"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textAlignment = .center
        view.numberOfLines = 0
        return view
    }()
    
    private lazy var numberCodeView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9686270356, green: 0.9686278701, blue: 0.9858369231, alpha: 1)
        view.layer.cornerRadius = 4
        return view
    }()
    
    private lazy var codeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Flag")
        return view
    }()
    
    private lazy var phoneNumberCode: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14, weight: .medium)
        view.textAlignment = .right
        view.text = "+62"
        return view
    }()
    
    private lazy var phoneNumberTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Phone Number"
        view.layer.cornerRadius = 4
        view.backgroundColor = #colorLiteral(red: 0.9686270356, green: 0.9686278701, blue: 0.9858369231, alpha: 1)
        return view
    }()
    
    private lazy var continueButton: UIButton = {
        let view = UIButton()
        view.setTitle("Continue", for: .normal)
        view.backgroundColor = .systemBlue
        view.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        view.layer.cornerRadius = 30
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(firstText)
        firstText.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(secondText)
        secondText.snp.makeConstraints { make in
            make.top.equalTo(firstText.snp.bottom).offset(5)
            make.horizontalEdges.equalToSuperview().inset(40)
        }
        
        view.addSubview(numberCodeView)
        numberCodeView.addSubview(codeImage)
        numberCodeView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalTo(secondText.snp.bottom).offset(48)
            make.height.equalTo(36)
            make.width.equalTo(74)
        }
        
        codeImage.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.height.equalTo(24)
            make.width.equalTo(24)
        }
        
        numberCodeView.addSubview(phoneNumberCode)
        phoneNumberCode.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-8)
            make.leading.equalTo(codeImage.snp.trailing).offset(5)
            make.height.equalTo(24)
        }
        
        view.addSubview(phoneNumberTextField)
        phoneNumberTextField.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-24)
            make.top.equalTo(secondText.snp.bottom).offset(48)
            make.leading.equalTo(numberCodeView.snp.trailing).offset(8)
            make.height.equalTo(36)
        }
        
        view.addSubview(continueButton)
        continueButton.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(81)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(52)
        }
    }
}
