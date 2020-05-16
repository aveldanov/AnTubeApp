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
      collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
   
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    let cell = UICollectionViewCell()
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
    
    cell.backgroundColor = .brown
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: view.frame.width, height: 200)
  }

}
