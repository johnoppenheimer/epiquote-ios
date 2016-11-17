//
//  TabBarViewController.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let latestController = LatestViewController()
        let latestNavController = UINavigationController(rootViewController: latestController)
        let latestItem = UITabBarItem(title: "Dernières", image: UIImage(named: "first"), selectedImage: nil)
        latestNavController.tabBarItem = latestItem
        
        let bestController = BestViewController()
        let bestNavController = UINavigationController(rootViewController: bestController)
        let bestItem = UITabBarItem(title: "Meilleurs", image: UIImage(named: "second"), selectedImage: nil)
        bestNavController.tabBarItem = bestItem
        
        self.setViewControllers([latestNavController, bestNavController], animated: true)
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
