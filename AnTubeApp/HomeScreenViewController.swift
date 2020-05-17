//
//  HomeScreenViewController.swift
//  AnTubeApp
//
//  Created by Veldanov, Anton on 5/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit


class HomeScreenViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    collectionView.backgroundColor = .orange
    
    navigationItem.title = "Home"
    collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "Cell")
  }
  
  //MARK: - Collection Methods
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    //    let cell = UICollectionViewCell()
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
    
    //        cell.backgroundColor = .brown
    
    
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 200)
  }
  
  // eliminate space
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  
  
  
  
}

//MARK: - Custom Video Cell
class VideoCell: UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  
  var thumbnailImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .cyan
    return imageView
  }()
  
  
  let separatorView: UIView = {
    let view = UIView()
    view.backgroundColor = .black
    return view
  }()
  
  let userProfileImageView: UIView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .red
    return imageView
  }()
  
  let titleLabel: UILabel = {
    let label = UILabel()
    label.backgroundColor = UIColor.green
    label.translatesAutoresizingMaskIntoConstraints = false

    return label

  }()
  
  
  let subTitleTextView: UITextView = {
    let textView = UITextView()
    textView.backgroundColor = UIColor.yellow
    textView.translatesAutoresizingMaskIntoConstraints = false
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
        
        addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 8))
        
    //    left constraint
        addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
    // right constraint
        addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        // height constraint
        addConstraint(NSLayoutConstraint(item: subTitleTextView, attribute: .height, relatedBy: .equal, toItem: .none, attribute: .height, multiplier: 1, constant: 20))
    
    
    
    
//    addConstraintsWithFormat(format: "V:[v0(20)]", views: titleLabel)
//    addConstraintsWithFormat(format: "H:|-16-[v0]-8-[v1]-16-|", views:userProfileImageView, titleLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


extension UIView{
  
  func addConstraintsWithFormat(format: String, views: UIView...){
    var viewsDictionary = [String: UIView]()
    for (index,view) in views.enumerated(){
      let key = "v\(index)"
      view.translatesAutoresizingMaskIntoConstraints = false
      
      viewsDictionary[key] = view
    }
    
    
    addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: viewsDictionary))
    
    
  }
  
  
}
