//
//  SceneDelegate.swift
//  AnTubeApp
//
//  Created by Veldanov, Anton on 5/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

extension UIColor{
  static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat)->UIColor{
    
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
  }
  
  
}




class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    guard let _ = (scene as? UIWindowScene) else { return }
    
    if let windowScene = scene as? UIWindowScene {
      
      let window = UIWindow(windowScene: windowScene)
      let layout = UICollectionViewFlowLayout()

      let navigationController = UINavigationController(rootViewController: HomeScreenViewController(collectionViewLayout: layout)  )
      
      window.rootViewController = navigationController
      self.window = window
      window.makeKeyAndVisible()
      
//      navigationController.navigationBar.barTintColor = UIColor(red: 230/255, green: 32/255, blue: 31/255, alpha: 1)
      navigationController.navigationBar.barTintColor = UIColor.rgb(red: 230, green: 32, blue: 31)
      
    
      
      guard let statusBarFrame = windowScene.statusBarManager?.statusBarFrame else{return}
      let statusBarBackgroundView = UIView(frame: statusBarFrame)
      statusBarBackgroundView.backgroundColor = .blue
    }
    
    
    
    
    
  }
  
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
  }
  
  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }
  
  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }
  
  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }
  
  
}

