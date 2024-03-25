//
//  ViewController.swift
//  contact_details
//
//  Created by Karthiga on 12/19/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    var contact = ["kavitha","amuth","jaya","bama","vani"]
    var  img = ["img1","img2","img3","img4","img5"]
    let imagepicker = UIImagePickerController()
    
    @IBOutlet weak var table: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let names = contact[indexPath.row]
        
        let imageName = img[indexPath.row]
        if let image = UIImage(named: imageName) {
                    cell.imagebox.image = image
                }
        cell.labelcell.text = names
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "segue") as? firstViewController
        vc?.img = UIImage(named: img[indexPath.row])
        vc?.name = contact[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
       
           }
   

}

