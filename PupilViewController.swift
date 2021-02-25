//
//  PupilViewController.swift
//  FMDBTut
//
//  Created by Илья on 29/04/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class PupilViewController: UIViewController {
    
    @IBOutlet weak var NameField: UILabel!
    @IBOutlet weak var FullRating: UIProgressView!
    @IBOutlet weak var FullRatingTitle: UILabel!
    @IBOutlet weak var LevelImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            
            self.view.setBackgroundImage(img: image)
        }
        
        self.navigationItem.title = "Личный кабинет"
        
        let ratingImage = UIButton()
        ratingImage.setImage(UIImage(named: "rating1"), for: .normal)
        ratingImage.addTarget(self, action: #selector(goRating(param:)), for: .touchDown)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: ratingImage)
       
    
        
        NameField.text = "LEVEL " + String(Int(floor(curPupil.rating/10))+1) + ". Rating - " + String(curPupil.rating)
        FullRating.progress = Float(curPupil.rating) / 100
        FullRatingTitle.text = "Frezze rating - " + String(curPupil.rating)+" %"
        
        switch Int(curPupil.rating) {
        case 0..<10:    LevelImage.image = UIImage(named:"level1")!
        case 10..<20:   LevelImage.image = UIImage(named:"level2")!
        case 20..<30:   LevelImage.image = UIImage(named:"level3")!
        case 30..<40:   LevelImage.image = UIImage(named:"level4")!
        case 40..<50:   LevelImage.image = UIImage(named:"level5")!
        case 50..<60:   LevelImage.image = UIImage(named:"level6")!
        case 60..<70:   LevelImage.image = UIImage(named:"level7")!
        case 70..<80:   LevelImage.image = UIImage(named:"level8")!
        case 80..<90:   LevelImage.image = UIImage(named:"level9")!
        case 90...100:  LevelImage.image = UIImage(named:"level10")!
            
        default:        LevelImage.image = UIImage(named:"level1")!
        }
        
    }
    
    @objc func goRating (param: UIButton) {
        performSegue(withIdentifier: "RatingTableSegue", sender: self)
    }

}
