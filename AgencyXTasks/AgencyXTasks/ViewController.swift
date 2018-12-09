//
//  ViewController.swift
//  AgencyXTasks
//
//  Created by WebSailors on 09.12.2018.
//  Copyright © 2018 AgencyX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var EmailTextControl: UITextField!
    @IBOutlet var PasswordTextControl: UITextField!
    @IBOutlet var SubmitButtonControl: UIButton!
    @IBOutlet var GoInButtonColtrol: UIButton!
    
    @IBAction func SubmitButtonAction(_ sender: Any) {
        _ = UIViewController.displaySpiner(onView: self.view)
        
        displayErrorMessage(title: "Info", message: "OK!!!")
        
        UIViewController.removeSpinner(spinner: self.view)
        
    }
    
    @IBAction func GoInButtonAction(_ sender: Any) {
    }
    
    func loadHomeScreen() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInViewController = storyBoard.instantiateViewController(withIdentifier: "LoggedInViewController")
        self.present(loggedInViewController, animated: true, completion: nil)
    }
    
    func displayErrorMessage(title: String, message: String) {
        let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) {(action:UIAlertAction) in}
        alertView.addAction(OKAction)
        if let presenter = alertView.popoverPresentationController {
            presenter.sourceView = self.view
            presenter.sourceRect = self.view.bounds
        }
        self.present(alertView, animated: true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        EmailTextControl.text = ""
        PasswordTextControl.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

