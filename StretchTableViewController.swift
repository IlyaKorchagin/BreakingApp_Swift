//
//  StretchTableViewController.swift
//  FMDBTut
//
//  Created by Илья on 01/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class StretchTableViewController: UITableViewController {

    @IBOutlet weak var TwinRating: UIProgressView!
    @IBOutlet weak var TwinRatingTitle: UILabel!
    
    @IBOutlet weak var FoldRating: UIProgressView!
    @IBOutlet weak var FoldRatingTitle: UILabel!
    
    @IBOutlet weak var ButterflyRating: UIProgressView!
    @IBOutlet weak var ButterflyRatingTitle: UILabel!
    
    @IBOutlet weak var ShoulderstretchRating: UIProgressView!
    @IBOutlet weak var ShoulderstretchRatingTitle: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            self.view.setBackgroundImage(img: image)
        }

        TwinRating.progress = Float(curPupil.twine) / 100
        if (curPupil.twine_dinamic == 0)
        {
            TwinRatingTitle.text = String(curPupil.twine)+" %"
        }
        else if (curPupil.twine_dinamic > 0)
        {
            TwinRatingTitle.text = String(curPupil.twine)+" %" + "  (↑ " + String(curPupil.twine_dinamic) + ")"
        }
        else
        {
            TwinRatingTitle.text = String(curPupil.twine)+" %" + "   (↓ " + String(curPupil.twine_dinamic) + ")"
        }
        
        FoldRating.progress = Float(curPupil.fold) / 100
        if (curPupil.fold_dinamic == 0)
        {
            FoldRatingTitle.text = String(curPupil.fold)+" %"
        }
        else if (curPupil.fold_dinamic > 0)
        {
            FoldRatingTitle.text = String(curPupil.fold)+" %" + "  (↑ " + String(curPupil.fold_dinamic) + ")"
        }
        else
        {
            FoldRatingTitle.text = String(curPupil.fold)+" %" + "   (↓ " + String(curPupil.fold_dinamic) + ")"
        }
        
        ButterflyRating.progress = Float(curPupil.butterfly) / 100
        if (curPupil.butterfly_dinamic == 0)
        {
            ButterflyRatingTitle.text = String(curPupil.butterfly)+" %"
        }
        else if (curPupil.butterfly_dinamic > 0)
        {
            ButterflyRatingTitle.text = String(curPupil.butterfly)+" %" + "  (↑ " + String(curPupil.butterfly_dinamic) + ")"
        }
        else
        {
            ButterflyRatingTitle.text = String(curPupil.butterfly)+" %" + "   (↓ " + String(curPupil.butterfly_dinamic) + ")"
        }
        
        ShoulderstretchRating.progress = Float(curPupil.shoulders) / 100
        if (curPupil.shoulders_dinamic == 0)
        {
            ShoulderstretchRatingTitle.text = String(curPupil.shoulders)+" %"
        }
        else if (curPupil.shoulders_dinamic > 0)
        {
            ShoulderstretchRatingTitle.text = String(curPupil.shoulders)+" %" + "  (↑ " + String(curPupil.shoulders_dinamic) + ")"
        }
        else
        {
            ShoulderstretchRatingTitle.text = String(curPupil.shoulders)+" %" + "   (↓ " + String(curPupil.shoulders_dinamic) + ")"
        }
        
    }

}
