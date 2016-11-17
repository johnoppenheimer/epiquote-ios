//
//  LatestViewController.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit

class LatestViewController: QuotesViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Dernières"
        
        self.data.insert(contentsOf: [
            Quote(author: "Maxime", context: "mevouc (Avalanche de montages photos de Meven sur Fb pour son anniversaire)", content: "loul", date: Date()),
            Quote(author: "Maxime", context: "Check Présence (En cours)", content: "J'ai dormi au cours d'avant, du coup j'ai oublié mon stylo.\nJe vais devoir en voler un au prochain salon", date: Date())
        ] as [Any], at: 0)
        
        self.adapter.performUpdates(animated: true, completion: nil)
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
