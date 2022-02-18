//
//  ViewController.swift
//  MadLibs
//
/*
 Create an app with 2 views. The first view should be embedded within a Navigation Controller. You should add a bar button item on the top right of the navigation controller. When pressed the bar button item should segue to a second view with 4 text fields and a submit button. Upon clicking the submit button, the app should unwind back to the first view.
 When the app goes back to the first view a sentence should appear like this : "We are having a perfectly (value of textfield1) right now. Later we will (value of textfield2) and (value of textfield3) in the (value of textfield4)".
 Use the text from the form to populate a MadLibs sentence.
 
 Requirements
 Modal segue to page with 4 TextFields
 TextFields should have placeholder text and be properly constrained
 Placeholders say : Adjective, Verb, Verb, Noun in this order
 Main page should show "..." before they have submitted madlibs
 */


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var RightBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//end viewdidload

    @IBAction func BarButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
}
extension ViewController: SecondVCDelegate{
    func sendSentenceBack(_ text: String) {
        TextLabel.text = text
    }
    
    
}

