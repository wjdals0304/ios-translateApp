//
//  TranslateViewController.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import UIKit
import SnapKit

final class TranslateViewController: UIViewController {
    
    private lazy var sourceLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("한국어", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0 , weight: .semibold)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 9.0
        return button
    }()
    
    private lazy var targetLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("영어", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15.0 , weight: .semibold)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemBackground
        button.layer.cornerRadius = 9.0
        
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.spacing = 8.0
        
        [ sourceLanguageButton,targetLanguageButton].forEach { stackView.addArrangedSubview($0)}
        return stackView
    }()
    
    private lazy var resultBaseView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 23.0, weight: .bold)
        label.textColor = UIColor.mainTintColor
        label.text = "Hello"
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var bookmarkButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "bookmark"), for: .normal)
        return button
    }()
    
    private lazy var copyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "doc.on.doc"), for: .normal)
        return button
    }()
    
    private lazy var sourceLabelBaseButton: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        
        return view
    }()
    
    private lazy var sourceLabel: UILabel = {
        let label = UILabel()
        label.text = "텍스트 입력"
        label.textColor = .tertiaryLabel
        //TODO: sourceLabel 에 입력값이 추가되면, placeholder 스타일 해제
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 23.0, weight: .semibold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .secondarySystemBackground
        setupViews()
    }
    
}


private extension TranslateViewController {
    
    func setupViews() {
        [
            buttonStackView,
            resultBaseView,
            resultLabel,
            bookmarkButton,
            copyButton,
            sourceLabelBaseButton,
            sourceLabel
        ].forEach{ view.addSubview($0)}
        
        let defaultSpacing: CGFloat = 16.0
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalToSuperview().inset(defaultSpacing)
            make.trailing.equalToSuperview().inset(defaultSpacing)
            make.height.equalTo(50)
        }
        
        resultBaseView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(buttonStackView.snp.bottom).offset(defaultSpacing)
            make.bottom.equalTo(bookmarkButton.snp.bottom).offset(defaultSpacing) // TODO: 컨텐츠 사이즈에 맞게 가변높이로 수정하기
        }
        
        resultLabel.snp.makeConstraints { make in
            make.leading.equalTo(resultBaseView.snp.leading).inset(24)
            make.trailing.equalTo(resultBaseView.snp.trailing).inset(24)
            make.top.equalTo(resultBaseView.snp.top).inset(24)
        }
        
        bookmarkButton.snp.makeConstraints { make in
            make.leading.equalTo(resultLabel.snp.leading)
            make.top.equalTo(resultLabel.snp.bottom).offset(24.0)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        copyButton.snp.makeConstraints { make in
            make.leading.equalTo(bookmarkButton.snp.trailing).inset(8)
            make.top.equalTo(bookmarkButton.snp.top)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        sourceLabelBaseButton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(resultBaseView.snp.bottom).offset(defaultSpacing)
            make.bottom.equalToSuperview().inset(tabBarController?.tabBar.frame.height ?? 0.0)
        }
        
        sourceLabel.snp.makeConstraints { make in
            make.leading.equalTo(sourceLabelBaseButton.snp.leading).inset(24.0)
            make.trailing.equalTo(sourceLabelBaseButton.snp.trailing).inset(24.0)
            make.top.equalTo(sourceLabelBaseButton.snp.top).inset(24.0)
        }
        
        
        
        
    }
}

