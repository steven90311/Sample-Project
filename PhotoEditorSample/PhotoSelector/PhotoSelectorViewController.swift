//
//  PhotoSelectorViewController.swift
//  PhotoEditorSample
//
//  Copyright © 2018 Taras Tomchuk. All rights reserved.
//

import UIKit
import SquareMosaicLayout

final class PhotoSelector: UIViewController {
    
    let images = DefaultImages().images
    var sentImage = UIImage()
    
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    
    @IBAction func didPresImport(_ sender: UIBarButtonItem) {
        //photo picker will be here
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
