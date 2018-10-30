//
//  ViewController.swift
//  GoodStuff
//
//  Created by iGuest on 10/29/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var appdata = AppData.shared
    
    @IBOutlet weak var tblView: UITableView!
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        appdata.topicIdx = indexPath.row
        performSegue(withIdentifier: "segueGoToQuestion", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appdata.titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "quizCell") as! QuizCell
        cell.lblTitle.text = appdata.titles[indexPath.row]
        cell.lblDescr.text = appdata.descr[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tblView.dataSource = self
        tblView.delegate = self
    }


}

