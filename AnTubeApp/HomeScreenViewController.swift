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
    imageView.backgroundColor = .cyan
    return imageView
  }()
  
  
  func setupViews(){
    addSubview(thumbnailImageView)
    addSubview(separatorView)
    addSubview(userProfileImageView)
    
    
    addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: thumbnailImageView)
    
    // Vertical Contraints
    addConstraintsWithFormat(format: "V:|-16-[v0]-16-[v1(1)]|", views: thumbnailImageView,separatorView)
    addConstraintsWithFormat(format: "H:|[v0]|", views: separatorView)
    
    
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
