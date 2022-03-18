# TranslateApp 클론코딩 
- 30개프로젝트로배우는 iOS앱개발 with Swift초격차 패키지Online


<img src="https://user-images.githubusercontent.com/26668309/158953153-72b93ba6-b1a0-4953-a11d-7d9157b8b643.png" width = 30% > <img src="https://user-images.githubusercontent.com/26668309/158953233-2fdbd6dd-9c82-403b-be1c-0b1881144e5f.png" width = 30% ><img src="https://user-images.githubusercontent.com/26668309/158953326-e518f072-93f8-452c-a6f4-000017197a1d.png" width = 30%>


# 사용요소 
- Snapkit, Alamofire 


# 새로 배운 내용 

- localization

```Swift 
    var title: String {
        switch self {
        case .ko: return NSLocalizedString("Korean", comment: "한국어")
        case .en: return NSLocalizedString("English", comment: "영어")
        case .ja: return NSLocalizedString("Japanese", comment: "일본어")
        case .ch: return NSLocalizedString("Chinese", comment: "중국")
        }
    }
 ```
 
 - UIStackView margin 적용
 
```Swift 
    private lazy var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        
        stackView.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
    
        return stackView
    }()
```

 - UITextView returnKey Type 설정 
 ```Swift 
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.text = placeholderText
        textView.textColor = .secondaryLabel
        textView.font = .systemFont(ofSize: 18.0, weight: .semibold)
        textView.returnKeyType = .done
        textView.delegate = self
        return textView
    }()
 ```
 - UITextView placeholder 적용 및 리턴키 제어 
 ```Swift
 extension SourceTextViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        guard  textView.textColor == .secondaryLabel else { return }
        textView.text = nil
        textView.textColor = .label

    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        guard text == "\n" else { return true }
        
        delegate?.didEnterText(textView.text)
        dismiss(animated: true, completion: nil)
        
        return true
    }
    
}
```
 
 

