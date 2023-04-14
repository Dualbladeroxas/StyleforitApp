//
//  Shirt.swift
//  HOMEPAGE
//
//  Created by Brandon Nguyen on 4/13/23.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(name: "Shirts")
    }
    
    
}
