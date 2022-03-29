//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by lee bennett on 3/21/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath)
        
        // Configure it
        
        // 0 - 255
        let randomRed = CGFloat(Int.random(in: 0..<255)) / 255.0
        let randomGreen = CGFloat(Int.random(in: 0..<255)) / 255.0
        let randomBlue = CGFloat(Int.random(in: 0..<255)) / 255.0
        let color = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        cell.backgroundColor = color
        
        return cell
    }
    


}

