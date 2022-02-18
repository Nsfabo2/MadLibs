//
//  SecondViewController.swift
//  MadLibs
//
//  Created by Najla on 05/01/2022.
//

import UIKit

protocol SecondVCDelegate: AnyObject{
    func sendSentenceBack(_ text: String)
}

class SecondViewController: UIViewController {
    //Button outlets
    @IBOutlet weak var SubmitButton: UIButton!
    //Text field outlets
    @IBOutlet weak var OneTextField: UITextField!
    @IBOutlet weak var TwoTextField: UITextField!
    @IBOutlet weak var ThreeTextField: UITextField!
    @IBOutlet weak var FourTextField: UITextField!
    //delegate
    weak var delegate: SecondVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func SubmitButtonClicked(_ sender: Any) {
        let sentence = "We are having a perfectly \(OneTextField.text) right now. Later we will \(TwoTextField.text) and \(ThreeTextField.text) in the \(FourTextField.text)"
        delegate?.sendSentenceBack(sentence)
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
