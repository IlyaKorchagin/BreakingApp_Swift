//
//  OFPTableViewController.swift
//  FMDBTut
//
//  Created by Илья on 01/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class OFPTableViewController: UITableViewController {

    @IBOutlet weak var PushupsRating: UIProgressView!
    @IBOutlet weak var PushupsRatingTitle: UILabel!
    
    @IBOutlet weak var HandstandRating: UIProgressView!
    @IBOutlet weak var HandstandRatingTitle: UILabel!
    
    @IBOutlet weak var PlancheRating: UIProgressView!
    @IBOutlet weak var PlancheRatingTitle: UILabel!
    
    @IBOutlet weak var AngleRating: UIProgressView!
    @IBOutlet weak var AngleRatingTitle: UILabel!
    
    @IBOutlet weak var BridgeRating: UIProgressView!
    @IBOutlet weak var BridgeRatingTitle: UILabel!
    
    @IBOutlet weak var FingersRating: UIProgressView!
    @IBOutlet weak var FingersRatingTitle: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            self.view.setBackgroundImage(img: image)
        }

        PushupsRating.progress = Float(curPupil.pushups) / 100
        if (curPupil.pushups_dinamic == 0)
        {
            PushupsRatingTitle.text = String(curPupil.pushups)+" %"
        }
        else if (curPupil.pushups_dinamic > 0)
        {
            PushupsRatingTitle.text = String(curPupil.pushups)+" %" + "  (↑ " + String(curPupil.pushups_dinamic) + ")"
        }
        else
        {
            PushupsRatingTitle.text = String(curPupil.pushups)+" %" + "   (↓ " + String(curPupil.pushups_dinamic) + ")"
        }
        
        HandstandRating.progress = Float(curPupil.handstand) / 100
        if (curPupil.handstand_dinamic == 0)
        {
            HandstandRatingTitle.text = String(curPupil.handstand)+" %"
        }
        else if (curPupil.handstand_dinamic > 0)
        {
            HandstandRatingTitle.text = String(curPupil.handstand)+" %" + "  (↑ " + String(curPupil.handstand_dinamic) + ")"
        }
        else
        {
            HandstandRatingTitle.text = String(curPupil.handstand)+" %" + "   (↓ " + String(curPupil.handstand_dinamic) + ")"
        }
        
        PlancheRating.progress = Float(curPupil.horizont) / 100
        if (curPupil.horizont_dinamic == 0)
        {
            PlancheRatingTitle.text = String(curPupil.horizont)+" %"
        }
        else if (curPupil.horizont_dinamic > 0)
        {
            PlancheRatingTitle.text = String(curPupil.horizont)+" %" + "  (↑ " + String(curPupil.horizont_dinamic) + ")"
        }
        else
        {
            PlancheRatingTitle.text = String(curPupil.horizont)+" %" + "   (↓ " + String(curPupil.horizont_dinamic) + ")"
        }
        
        AngleRating.progress = Float(curPupil.angle) / 100
        if (curPupil.angle_dinamic == 0)
        {
            AngleRatingTitle.text = String(curPupil.angle)+" %"
        }
        else if (curPupil.angle_dinamic > 0)
        {
            AngleRatingTitle.text = String(curPupil.angle)+" %" + "  (↑ " + String(curPupil.angle_dinamic) + ")"
        }
        else
        {
            AngleRatingTitle.text = String(curPupil.angle)+" %" + "   (↓ " + String(curPupil.angle_dinamic) + ")"
        }
        
        BridgeRating.progress = Float(curPupil.bridge) / 100
        if (curPupil.bridge_dinamic == 0)
        {
            BridgeRatingTitle.text = String(curPupil.bridge)+" %"
        }
        else if (curPupil.bridge_dinamic > 0)
        {
            BridgeRatingTitle.text = String(curPupil.bridge)+" %" + "  (↑ " + String(curPupil.bridge_dinamic) + ")"
        }
        else
        {
            BridgeRatingTitle.text = String(curPupil.bridge)+" %" + "   (↓ " + String(curPupil.bridge_dinamic) + ")"
        }
        
        FingersRating.progress = Float(curPupil.finger) / 100
        if (curPupil.finger_dinamic == 0)
        {
            FingersRatingTitle.text = String(curPupil.finger)+" %"
        }
        else if (curPupil.finger_dinamic > 0)
        {
            FingersRatingTitle.text = String(curPupil.finger)+" %" + "  (↑ " + String(curPupil.finger_dinamic) + ")"
        }
        else
        {
            FingersRatingTitle.text = String(curPupil.finger)+" %" + "   (↓ " + String(curPupil.finger_dinamic) + ")"
        }
        
    }

}
