//
//  QAViewController.swift
//  GoodStuff
//
//  Created by iGuest on 10/29/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class QAViewController: UIViewController {

    var appdata = AppData.shared
    
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btnSubmit: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newQuestion()
        // Do any additional setup after loading the view.
    }
    
    func newQuestion() {
        switch appdata.topicIdx {
        // Seattle
        case 0:
            lblQuestion.text = appdata.seaQuestions[0]
            btn1.setTitle(appdata.seaAnswers[0], for: .normal)
            btn2.setTitle(appdata.seaAnswers[1], for: .normal)
            btn3.setTitle(appdata.seaAnswers[2], for: .normal)
            btn4.setTitle(appdata.seaAnswers[3], for: .normal)
        // Chicago
        default:
            lblQuestion.text = appdata.chiQuestions[0]
            btn1.setTitle(appdata.chiAnswers[0], for: .normal)
            btn2.setTitle(appdata.chiAnswers[1], for: .normal)
            btn3.setTitle(appdata.chiAnswers[2], for: .normal)
            btn4.setTitle(appdata.chiAnswers[3], for: .normal)
        }
    }
    
    @IBAction func btnBackPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueBackHome", sender: self)
    }
    

}
