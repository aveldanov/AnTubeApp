//
//  VideoCell.swift
//  AnTubeApp
//
//  Created by Veldanov, Anton on 5/20/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit




//MARK: - Custom Video Cell
class VideoCell: UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  
  var thumbnailImageView: UIImageView = {
    let imageView = UIImageView()
    //    imageView.backgroundColor = .cyan
    imageView.image = UIImage(named: "mj.jpg")
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    return imageView
  }()
  
  
  let separatorView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
    return view
  }()
  
  let userProfileImageView: UIView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .yellow
    imageView.image = UIImage(named: "mjprofile")
    imageView.layer.cornerRadius = 22
    imageView.layer.masksToBounds = true
    return imageView
  }()
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Michael Jackson - Beat It"
    return label
    
  }()
  
  
  let subTitleTextView: UITextView = {
    let textView = UITextView()
    textView.backgroundColor = .clear
    textView.translatesAutoresizingMaskIntoConstraints = false
    textView.text = "MJVevo - Beat It, Beat It, Beat It  * 1,444,440 views * 2 years ago"
    textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
    textView.textColor = .lightGray
    return textView
  }()
  
  
  func setupViews(){
    addSubview(thumbnailImageView)
    addSubview(separatorView)
    addSubview(userProfileImageView)
    addSubview(titleLabel)
    addSubview(subTitleTextView)
    
    
    addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
    addConstraintsWithFormat(format: "H:|-16-[v0(44)]", views: userProfileImageView)
    
    
    // Vertical Contraints
    addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", views: thumbnailImageView,userProfileImageView,separatorView)
    addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
    // top constraint
    
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
    
    //    left constraint
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
    
    // right constraint
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
    // height constraint
    addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: .none, attribute: .height, multiplier: 1, constant: 20))
    
    
    
    // top constraint
    
    addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
    
    //    left constraint
    addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
    
    // right constraint
    addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
    // height constraint
    addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .height, relatedBy: .equal, toItem: .none, attribute: .height, multiplier: 1, constant: 30))
    
    
    
    
    //    addConstraintsWithFormat(format: "V:[v0(20)]", views: titleLabel)
    //    addConstraintsWithFormat(format: "H:|-16-[v0]-8-[v1]-16-|", views:userProfileImageView, titleLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
