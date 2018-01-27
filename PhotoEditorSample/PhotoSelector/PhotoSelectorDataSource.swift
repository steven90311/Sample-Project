//
//  PhotoSelectorDataSource.swift
//  PhotoEditorSample
//
//  Copyright © 2018 Taras Tomchuk. All rights reserved.
//

import UIKit

extension PhotoSelector: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCell
        
        cell.defaultImageInCell.image = images[indexPath.item]
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ImageCell
        
        sentImage = cell.defaultImageInCell.image!
        performSegue(withIdentifier: "selectorToEditor", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectorToEditor" {
            let photoEditor = segue.destination as! PhotoEditor
            photoEditor.receivedImage = sentImage
            
        }
    }
}
