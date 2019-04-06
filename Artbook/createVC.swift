//
//  createVC.swift
//  Artbook
//
//  Created by Peter Jenkin on 06/04/2019.
//  Copyright © 2019 Peter Jenkin. All rights reserved.
//

import UIKit

class createVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBAction func saveButtonClicked(_ sender: Any) {
    }
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        imageView.isUserInteractionEnabled = true
        
        // as per 6-49 setup & add gesture recogniser for clicking this image
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(createVC.selectImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        // Do any additional setup after loading the view.
    }
    
    func selectImage()
    {
        print("in selectImage")
        // selecting image from library
        let picker = UIImagePickerController()
        picker.delegate = self  // required ViewController to subclass UIImagePickerControllerDelegate, UINavigationControllerDelegate
        picker.sourceType = .photoLibrary
        // source could have been from camera; library for demonstration
        picker.allowsEditing = true
        //present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        present(picker, animated: true, completion: nil)
        // show ImagePicker, animated, no handler function on completion
    }

    // type in didfini ... & auto-complete d'pick right code
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
        // colossal flag name - typed in nearly all before auto-complete
        // then UIImage auto-completed to huge name!
        // (happening on video too !)
        // get (hopefully) Image from picker cast as UIIMage
        //self.dismiss(animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        
        self.dismiss(animated: true, completion: nil)
        
        // info is a dictionary
    }
    
    //func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    //    code
    
    //}

    
    
    //override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
