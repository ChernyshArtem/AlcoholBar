//
//  ViewController.swift
//  AlcoholBar
//
//  Created by Артём Черныш on 16.06.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOfBar: UILabel!
    @IBOutlet var alcoholButtons: [UIButton]!
    @IBOutlet weak var alcoholList: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfBar.text="Голубой петушок"
        /*
         for index in 0...alcoholButtons.count - 1 {
         alcoholButtons[index].titleLabel?.text = "\(index)"
         print("\(index)")
     }
         */
    }

    @IBAction func newChange(_ sender: Any) {
        changeButton.titleLabel?.text! == "Смена окончена" ? changeButton.setTitle("Новая смена", for: .normal) : changeButton.setTitle("Смена окончена", for: .normal)
    }
    @IBAction func refreshAlcoholList(_ sender: Any) {
        alcoholList.text = "Алкоголь к покупке:"
    }
    @IBAction func buyAlcohol(_ sender: UIButton) {
        let row = Int(sender.tag) / 10
        let column =  Int(sender.tag) % 10
        var value:String
        switch column{
        case 0:
            value = "0.25"
        case 1:
            value = "0.5"
        case 2:
            value = "0.9"
        default:
            value = "0"
        }
        print("row:\(row) column:\(column)")
        switch row{
        case 0:
            alcoholList.text = "\(alcoholList.text!)Пиво Алiварыя \(value)"
        case 1:
            alcoholList.text = "\(alcoholList.text!)Водка Столица \(value)"
        case 2:
            alcoholList.text = "\(alcoholList.text!)Коньяк Арарат \(value)"
        case 3:
            alcoholList.text = "\(alcoholList.text!)Пиво Крафт \(value)"
        case 4:
            alcoholList.text = "\(alcoholList.text!)Пиво Козел \(value)"
        default:
            alcoholList.text = "\(alcoholList.text!)Муденье \(value)"
        }
        alcoholList.text = "\(alcoholList.text!) л.\n"
    }
    
}
 
