//
//  MainTabBarController.swift
//  ProgrammaticTabBar
//
//  Created by Harun Gunes on 30/05/2021.
//

import UIKit

class MainTabBarController: UITabBarController {
  
  let leftUnselectedImage = UIImage(systemName: "arrowshape.turn.up.backward")
  let leftSelectedImage = UIImage(systemName: "arrowshape.turn.up.backward.fill")
  
  let middleUnselectedImage = UIImage(systemName: "dot.square")
  let middleSelectedImage = UIImage(systemName: "dot.square.fill")
  
  let rightUnselectedImage = UIImage(systemName: "arrowshape.turn.up.right")
  let rightSelectedImage = UIImage(systemName: "arrowshape.turn.up.right.fill")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = UIColor.systemPurple
    configureTabBarController()
  }
  
  func configureTabBarController() {
    
    let left = configureNavigationController(selectedImage: leftSelectedImage!, unselectedImage: leftUnselectedImage!, rootViewController: LeftViewController())
    
    let middle = configureNavigationController(selectedImage: middleSelectedImage!, unselectedImage: middleUnselectedImage!, rootViewController: MiddleViewController())
    
    let right = configureNavigationController(selectedImage: rightSelectedImage!, unselectedImage: rightUnselectedImage!, rootViewController: RightViewController())
    
    viewControllers = [left, middle, right]
    tabBar.tintColor = .black
    
  }
  
  func configureNavigationController(selectedImage: UIImage, unselectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
      
    let nav = UINavigationController(rootViewController: rootViewController)
    nav.tabBarItem.image = unselectedImage
    nav.tabBarItem.selectedImage = selectedImage
    nav.navigationBar.tintColor = UIColor.black
    return nav
  }
}
