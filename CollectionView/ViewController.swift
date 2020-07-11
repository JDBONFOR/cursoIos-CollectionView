//
//  ViewController.swift
//  CollectionView
//
//  Created by Juan Bonforti on 31/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: Variables
    private let myCountries = [
        "España",
        "Argentina",
        "Francia",
        "Perú",
        "Colombia",
        "EEUU",
        "Italia",
        "Mexico"
    ]
    // Mitad de pantalla.
    private let myCellWidth = UIScreen.main.bounds.width / 2
    
    // MARK: Private Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self;
        collectionView.delegate = self;
        collectionView.register(UINib(nibName: "MYCUSTOMCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
    }

    
    
    // MARK: IBActions

}

// MARK: Extension UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    // System functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Retornamos los items de la collection, de manera fija. En este caso 50, pero si corresponde a un Array de un request, utilizar el .count correspondiente.
        return myCountries.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Creamos las celdas en base a una celda reutilizable. En el Storyboard definimos el identifier de nuestra celda y la retornamos.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as? MYCUSTOMCollectionViewCell
        cell!.myFirstLabel.text = myCountries[indexPath.row]
        return cell!
        
    }
    
}

// MARK: Extension UICollectionViewDelegate
extension ViewController: UICollectionViewDelegate {
    
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.section) -> \(indexPath.row) \(myCountries[indexPath.row])")
    }
    
}

// MARK: Extension UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    // Manejo del tamaño de la celda.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.section == 0 {
            return CGSize(width: myCellWidth, height:myCellWidth)
        }
        
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        
        
    }
}
