//
//  ClassificationEventDetail.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

class ClassificationEventDetail: UIViewController {
    
    var clasificationEvent: classificationEvent?
    var dateFormatter = DateFormatter()

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var classificationIconImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        
        
        classificationIconImageView.image = classificationEvent?.classification.image
        matchupLabel.text = classificationEvent?.matchup
        
        if let date = classificationEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        }else {
            dateLabel.text = ""
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
