//
//  FMCropCell.swift
//  FMPhotoPicker
//
//  Created by c-nguyen on 2018/03/09.
//  Copyright © 2018 Tribal Media House. All rights reserved.
//

import UIKit

class FMCropCell: UICollectionViewCell {
    static let reussId = String(describing: self)
    private var imageView: UIImageView
    private var name: UILabel
    var activeIcon: UIImage?
    var inactiveIcon: UIImage?
    
    override init(frame: CGRect) {
        imageView = UIImageView()
        name = UILabel()
        
        super.init(frame: frame)
        
        imageView.frame = CGRect(x: (frame.width - 24) / 2, y: 20, width: 24, height: 24)
        imageView.contentMode = .scaleAspectFit
        
        self.addSubview(imageView)
        self.addSubview(name)
        
        name.translatesAutoresizingMaskIntoConstraints = false
        name.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        name.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true

        name.textColor = kGrayColor
        name.font = UIFont.systemFont(ofSize: 8)
    }
    
    override func prepareForReuse() {
        setDeselected()
    }
    
    public func setSelected() {
        imageView.image = activeIcon
    }
    
    public func setDeselected() {
        imageView.image = inactiveIcon
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
