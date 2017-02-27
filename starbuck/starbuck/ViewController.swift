//
//  ViewController.swift
//  starbuck
//
//  Created by Chalermwut on 2/26/2560 BE.
//  Copyright © 2560 Chalermwut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func manageAction() {
        let alertController = UIAlertController(title: nil,message: nil,preferredStyle: .actionSheet)
        
        //Button
        let cancelButton = UIAlertAction(title: "Cancel",style: .cancel,handler: nil)
        
        let refreshButton = UIAlertAction(title: "Refresh Balance",style: .default)
        
        let traButton = UIAlertAction(title: "Transaction History",style: .default, handler: { action in self.performSegue(withIdentifier: "open", sender: self)})


        // 3 add button to alert
        alertController.addAction(cancelButton)
        alertController.addAction(refreshButton)
        alertController.addAction(traButton)

        // 4 show alert
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        self.scrollView.frame = CGRect(x:16, y:self.scrollView.frame.minY, width:self.scrollView.frame.width, height:self.scrollView.frame.height)
        let scrollViewWidth:CGFloat = self.scrollView.frame.width
        let scrollViewHeight:CGFloat = self.scrollView.frame.height
        
        //3
        let playButton  = UIButton(frame: CGRect(x:0, y:0,width:scrollViewWidth, height:scrollViewHeight))
        playButton.setImage(UIImage(named: "card"), for: .normal)
        
        let playButton1  = UIButton(frame: CGRect(x:scrollViewWidth, y:0,width:scrollViewWidth, height:scrollViewHeight))
        playButton1.setImage(UIImage(named: "card_add"), for: .normal)
        
//        let imgOne = UIImageView(frame: CGRect(x:0, y:0,width:scrollViewWidth, height:scrollViewHeight))
//        imgOne.image = UIImage(named: "card")
//        let imgTwo = UIImageView(frame: CGRect(x:scrollViewWidth, y:0,width:scrollViewWidth, height:scrollViewHeight))
//        imgTwo.image = UIImage(named: "card1")
//        
//        self.scrollView.addSubview(imgOne)
//        self.scrollView.addSubview(imgTwo)
        
        self.scrollView.addSubview(playButton)
        self.scrollView.addSubview(playButton1)

        //4
        self.scrollView.contentSize = CGSize(width:self.scrollView.frame.width * 2, height:self.scrollView.frame.height)
        self.scrollView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UIScrollView Delegate


}

