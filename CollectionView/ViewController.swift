//
//  ViewController.swift
//  CollectionView
//
//  Created by Juan Bonforti on 31/05/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // IBActions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpCollectionView(collection: collectionView);
    }

    // Variables
    
    // Functions
    func setUpCollectionView( collection: UICollectionView ){
        /** Delego el manejo de la collection a este viewController
         por eso agrego los delegados a la clase. */
        collection.delegate = self;
        collection.dataSource = self;
    }
    
    // System functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        // Retornamos los items de la collection, de manera fija. En este caso 50, pero si corresponde a un Array de un request, utilizar el .count correspondiente.
        return 200
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Creamos las celdas en base a una celda reutilizable. En el Storyboard definimos el identifier de nuestra celda y la retornamos.
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath)
        
        // Asignamos un color STD para todas por igual.
        //cell.backgroundColor = UIColor.orange
        
        let red = CGFloat(Int(arc4random_uniform(155)) + 100)
        let green = CGFloat(Int(arc4random_uniform(155)) + 100)
        let blue = CGFloat(Int(arc4random_uniform(155)) + 100)
        
        cell.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        return cell
    }
    

}

