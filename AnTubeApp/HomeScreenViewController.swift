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
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  
  func setupViews(){
        addSubview(thumbnailImageView)
    
    addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: [], metrics: nil, views: ["v0" : thumbnailImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[v0]-16-|", options: [], metrics: nil, views: ["v0" : thumbnailImageView]))
    
//    thumbnailImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
