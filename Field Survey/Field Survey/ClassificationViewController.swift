//
//  ClassificationViewController.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

class ClassificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let classificationEvents = classEventsJSONLoader.load(fileName: "collection_events")
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classificationEvents.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "classificationEventCell", for: indexPath)
        
        if let cell = cell as? CollectionEventTableViewCell {
            let collectionEvent = collectionEvent[indexPath.row]
            cell.collectionIconImageView.image = collectionEvent.collection.image
            cell.matchupLabel.text = collectionEvent.matchup
            cell.dateLabel.text = dateFormatter.string(from: collectionEvent.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ClassificationViewController {
        
            destination.classificationEvent = classificationEvent[]
        }
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
