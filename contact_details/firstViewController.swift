//
//  firstViewController.swift
//  contact_details
//
//  Created by Karthiga on 12/19/23.
//

import UIKit

class firstViewController: UIViewController {
    
    @IBOutlet weak var imagebox: UIImageView!
    
    @IBOutlet weak var label1: UILabel!
    var img: UIImage?
   
    var name:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = img {
                   imagebox.image = image
               }
        if let text = name{
            label1.text = text
        }
    }
         
}
