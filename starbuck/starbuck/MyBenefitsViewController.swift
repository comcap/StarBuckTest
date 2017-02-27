//
//  MyBenefitsViewController.swift
//  starbuck
//
//  Created by Chalermwut on 2/27/2560 BE.
//  Copyright © 2560 Chalermwut. All rights reserved.
//

import UIKit

class MyBenefitsViewController: UIViewController {

    @IBAction func filter() {
        //Alert
        let alertController = UIAlertController(title: nil,message: nil,preferredStyle: .actionSheet)
        
        //Button
        let cancelButton = UIAlertAction(title: "Cancel",style: .cancel,handler: nil)
        
        let activeButton = UIAlertAction(title: "Active",style: .default)
        
        let redeemedButton = UIAlertAction(title: "Redeemed",style: .default)
        
        let expiredButton = UIAlertAction(title: "Expired",style: .default)
        // 3 add button to alert
        alertController.addAction(cancelButton)
        alertController.addAction(activeButton)
        alertController.addAction(redeemedButton)
        alertController.addAction(expiredButton)
        // 4 show alert
        self.present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
