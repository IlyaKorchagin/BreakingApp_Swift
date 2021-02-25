//
//  RatingViewController.swift
//  FMDBTut
//
//  Created by Илья on 06/05/2020.
//  Copyright © 2020 Appcoda. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController {

    
    @IBOutlet weak var Table: UITableView!
    @IBOutlet weak var SortList: UIPickerView!
    
    var sortData: [String] = [String] ()
    var pupils: [Pupil]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // загружаем нашу картинку в Background View
        if let image = UIImage(named: "orangebackground"){
            self.view.setBackgroundImage(img: image)
        }
        
        pupils = DBManager.shared.loadPupils(sortField: DBManager.shared.field_Rating)

        // Соединяем данные:
        self.SortList.delegate = self as? UIPickerViewDelegate
        self.SortList.dataSource = self as? UIPickerViewDataSource
        
        self.Table.dataSource = self as? UITableViewDataSource
        self.Table.delegate = self as? UITableViewDelegate
        
        sortData = ["RATING", "BATTLE_RATING", "FREZZE_RATING", "POWERMOVE_RATING", "OFP_RATING", "STRETCHING_RATING", "BABY_FREZZE", "CHAIR_FREZZE", "ELBOW_FREZZE", "HEAD_FREZZE",
        "HEAD_HOLLOWBACK_FREZZE", "HOLLOWBACK_FREZZE", "INVERT_FREZZE", "ONE_HAND_FREZZE", "SHOULDER_FREZZE", "TURTLE_FREZZE", "AIRFLARE", "BACKSPIN", "CRICKET", "ELBOWAIRFLARE", "FLARE", "JACKHAMMER", "HALO", "HEADSPIN", "MUNCHMILL", "NINETY_NINE", "SWIPES", "TURTLE", "UFO",  "WEB","WINDMILL", "WOLF", "HANDSTAND", "ANGLE", "HORIZONT", "FINGER", "PUSHUPS", "BRIDGE", "TWINE", "FOLD", "SHOULDERS", "BUTTERFLY"]
       
    }
    
}
extension RatingViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return 1
        }
        return pupils!.count
    }
    
    func din(sort: Int, pupil: Pupil) -> String
    {
        var dinamic: Int
        var result: String
        if (sort==0) {dinamic = pupil.current_position - pupil.new_position}
        else {dinamic = pupil.battle_cur_position - pupil.battle_new_position}
        if (dinamic == 0) {result=""}
        if (dinamic > 0) {result = " (↑ " + String(dinamic)+")"}
        else {result = " (↓ " + String(abs(dinamic))+")"}
    return result;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell: RatingTableViewCell!
        
        if (indexPath.section == 0)
        {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? RatingTableViewCell
            {
                cell.BackgroundImage.image = UIImage(named: "ratingtabrow1")
                cell.PositionTitle.text = "№"
                cell.NameTitle.text = " Bboy/Bgirl"
                cell.RatingTitle.text = "Rating"
                return cell
            }
            
        }
        else if (indexPath.section == 1)
        {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? RatingTableViewCell
            {
                if (indexPath.row % 2 == 0 )
                {
                    cell.BackgroundImage.image = UIImage(named: "ratingtabrow1")
                }
                else
                {
                    cell.BackgroundImage.image = UIImage(named: "ratingtabrow2")
                }
                
                cell.PositionTitle.text = String(indexPath.row + 1)
                cell.NameTitle.text = pupils[indexPath.row].name
                switch (sortField) {
                    
                    case "BATTLE_RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].battle_rating);
                    
                        if pupils[indexPath.row].battle_cur_position == 0 || pupils[indexPath.row].battle_cur_position - pupils[indexPath.row].battle_new_position == 0
                            {cell.NameTitle.text = pupils[indexPath.row].name}
                            else
                        {cell.NameTitle.text = pupils[indexPath.row].name + din( sort:1, pupil:  pupils[indexPath.row])}
                        break;
                
                    case "RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].rating);
                        if pupils[indexPath.row].current_position == 0 || pupils[indexPath.row].current_position - pupils[indexPath.row].new_position == 0
                        {cell.NameTitle.text = pupils[indexPath.row].name}
                        else
                        {cell.NameTitle.text = pupils[indexPath.row].name + din( sort:0, pupil:  pupils[indexPath.row])}
                        break;
                    
                    case "FREZZE_RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].frezze_rating);
                        break;
                    
                    case "POWERMOVE_RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].powermove_rating);
                        break;
                    
                    case "OFP_RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].ofp_rating);
                        break;
                    
                    case "STRETCHING_RATING":
                        cell.RatingTitle.text = String(pupils[indexPath.row].stretching_rating);
                        break;
                    
                    case "BABY_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].babyfrezze);
                        break;
                    
                    case "CHAIR_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].chairfrezze);
                        break;
                    
                    case "ELBOW_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].elbowfrezze);
                        break;
                    
                    case "HEAD_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].headfrezze);
                        break;
                    
                    case "HEAD_HOLLOWBACK_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].headhollowbackfrezze);
                        break;
                    
                    case "HOLLOWBACK_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].hollowbackfrezze);
                        break;
                    
                    case "INVERT_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].invertfrezze);
                        break;
                    
                    case "ONE_HAND_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].onehandfrezze);
                        break;
                    
                    case "SHOULDER_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].shoulderfrezze);
                        break;
                    
                    case "TURTLE_FREZZE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].turtlefrezze);
                        break;
                    
                    case "AIRFLARE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].airflare);
                        break;
                    
                    case "BACKSPIN":
                        cell.RatingTitle.text = String(pupils[indexPath.row].backspin);
                        break;
                    
                    case "CRICKET":
                        cell.RatingTitle.text = String(pupils[indexPath.row].cricket);
                        break;
                    
                    case "ELBOWAIRFLARE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].elbowairflare);
                        break;
                    
                    case "FLARE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].flare);
                        break;
                    
                    case "JACKHAMMER":
                        cell.RatingTitle.text = String(pupils[indexPath.row].jackhammer);
                        break;
                    
                    case "HALO":
                        cell.RatingTitle.text = String(pupils[indexPath.row].halo);
                        break;
                    
                    case "MUNCHMILL":
                        cell.RatingTitle.text = String(pupils[indexPath.row].munchmill);
                        break;
                    
                    case "NINETY_NINE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].ninety_nine);
                        break;
                    
                    case "SWIPES":
                        cell.RatingTitle.text = String(pupils[indexPath.row].swipes);
                        break;
                    
                    case "TURTLE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].turtle);
                        break;
                    
                    case "UFO":
                        cell.RatingTitle.text = String(pupils[indexPath.row].ufo);
                        break;
                    
                    case "WEB":
                        cell.RatingTitle.text = String(pupils[indexPath.row].web);
                        break;
                    
                    case "WINDMILL":
                        cell.RatingTitle.text = String(pupils[indexPath.row].windmill);
                        break;
                    
                    case "WOLF":
                        cell.RatingTitle.text = String(pupils[indexPath.row].wolf);
                        break;
                    
                    case "HANDSTAND":
                        cell.RatingTitle.text = String(pupils[indexPath.row].handstand);
                        break;
                    
                    case "ANGLE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].angle);
                        break;
                    
                    case "HORIZONT":
                        cell.RatingTitle.text = String(pupils[indexPath.row].horizont);
                        break;
                    
                    case "FINGER":
                        cell.RatingTitle.text = String(pupils[indexPath.row].finger);
                        break;
                    
                    case "PUSHUPS":
                        cell.RatingTitle.text = String(pupils[indexPath.row].pushups);
                        break;
                    
                    case "BRIDGE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].bridge);
                        break;
                    
                    case "TWINE":
                        cell.RatingTitle.text = String(pupils[indexPath.row].twine);
                        break;
                    
                    case "FOLD":
                        cell.RatingTitle.text = String(pupils[indexPath.row].fold);
                        break;
                    
                    case "SHOULDERS":
                        cell.RatingTitle.text = String(pupils[indexPath.row].shoulders);
                        break;
                    
                    case "BUTTERFLY":
                        cell.RatingTitle.text = String(pupils[indexPath.row].butterfly);
                        break;
                    
                default: cell.RatingTitle.text = String(pupils[indexPath.row].rating);
                break;
                }
                return cell
                    
            }
        }
        return UITableViewCell()
    }
}

extension RatingViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sortData.count
    }
    
}

extension RatingViewController: UIPickerViewDelegate{

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sortData[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        sortField = sortData[row]
        pupils = DBManager.shared.loadPupils(sortField: sortField)
        Table.reloadData()
    }

}
