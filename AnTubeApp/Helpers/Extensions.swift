//
//  Extensions.swift
//  AnTubeApp
//
//  Created by Veldanov, Anton on 5/20/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit


extension UIColor{
  static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat)->UIColor{
    
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
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
