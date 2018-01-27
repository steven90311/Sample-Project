//
//  PhotoEditorViewController.swift
//  PhotoEditorSample
//
//  Copyright © 2018 Taras Tomchuk. All rights reserved.
//

import UIKit

class PhotoEditor: UIViewController {
    
    
    @IBOutlet weak var selectedImage: UIImageView!
    var receivedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedImage.image = receivedImage
    }
}
