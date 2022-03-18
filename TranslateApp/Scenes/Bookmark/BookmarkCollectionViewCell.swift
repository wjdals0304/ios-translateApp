//
//  BookmarkCollectionViewCell.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import SnapKit
import UIKit

final class BookmarkCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "BookmarkCollectionViewCell"
    
    private var sourceBookmarkTextStackView :BookmarkTextStackView!
    
    private var targetBookmarkTextStackView :BookmarkTextStackView!
    
    private lazy var stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16
        
        stackView.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
    
        return stackView
    }()
    
    
    func setup(from bookmark: Bookmark) {
        backgroundColor = .systemBackground
        layer.cornerRadius = 12.0
        
        sourceBookmarkTextStackView = BookmarkTextStackView(
            language: bookmark.sourceLange,
            text: bookmark.sourceText,
            type: .source
        )
        
        targetBookmarkTextStackView = BookmarkTextStackView(
            language: bookmark.translatedLanguage,
            text: bookmark.translatedText,
            type: .target
        )
        
        stackView.subviews.forEach { $0.removeFromSuperview() }
        
        [
            sourceBookmarkTextStackView,targetBookmarkTextStackView
        ].forEach { stackView.addArrangedSubview($0)}
        
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.size.width - 32)

        }
        
        self.layoutIfNeeded()

        
    }
     
}
