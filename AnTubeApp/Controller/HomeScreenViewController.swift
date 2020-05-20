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
    
    
    collectionView.backgroundColor = .white
    navigationController?.navigationBar.isTranslucent = false
    let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width-32, height: view.frame.height))
    titleLabel.text = "Home"
    titleLabel.textColor = .white
    titleLabel.font = UIFont.systemFont(ofSize: 20)
    navigationItem.titleView = titleLabel
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
    let height = (view.frame.width - 16 - 16) * 9 / 16
    return CGSize(width: view.frame.width, height: height+16+68)
  }
  
  // eliminate space
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  
  
  
  
}




