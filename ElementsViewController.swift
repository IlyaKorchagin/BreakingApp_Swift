//
//  ElementsViewController.swift
//  FMDBTut
//
//  Created by Илья on 01/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class ElementsViewController: UITabBarController, UITabBarControllerDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
       
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            
            self.view.setBackgroundImage(img: image)
        }
        
        // Настройка  отображения TabBarItem
        UITabBarItem.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.font:UIFont.boldSystemFont(ofSize: 17),
             NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
    }
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController)!
        let vc = UIApplication.shared.windows[0].rootViewController?.children[1] as? PupilViewController
        switch (selectedIndex) {
        case 0: vc?.FullRatingTitle.text = "Frezze rating - " + String(curPupil.frezze_rating) + " %"
            break
        case 1: vc?.FullRatingTitle.text = "Power rating - " + String(curPupil.powermove_rating) + " %"
            break
            case 2: vc?.FullRatingTitle.text = "OFP rating - " + String(curPupil.ofp_rating) + " %"
            break
            case 3: vc?.FullRatingTitle.text = "Stretch rating - " + String(curPupil.stretching_rating) + " %"
            break
            
        default: break
        }
    }
}
