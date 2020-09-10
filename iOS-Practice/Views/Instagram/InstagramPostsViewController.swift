//
//  InstagramPostsViewController.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 10..
//

import UIKit



class InstagramPostsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let reuseIdentifier = "Cell"
    let memes : [UIImage] = {
        var memesarrray =  [UIImage]()
        for i in 1...5 {
            if let meme = UIImage(named: "meme\(i)") {
                memesarrray.append(meme)
            }
        }
        return memesarrray
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! InstagramPostCollectionViewCell
        cell.photo.image = memes[indexPath.item]
        cell.backgroundColor = .yellow
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
