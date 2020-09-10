//
//  InstagramPostsCollectionView.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 09. 10..
//

import UIKit

class InstagramPostsCollectionView: UICollectionView, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
  
    

    private var _numberOfColumns: Int  = 3

    
    //MARK: Init
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    }
    func setup(){
        self.delegate = self
        self.dataSource = self
    }

    //MARK: Layout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = self.bounds.width
        let cellWidth =  collectionWidth / CGFloat(_numberOfColumns)
        return CGSize(width: cellWidth, height: cellWidth)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0.0, right: 0.0)
      }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 0.0
      }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
         return 0.0
      }
    
    //MARK: Data source
    let reuseIdentifier = "Cell"
      let memes : [UIImage] = {
          var memesarrray =  [UIImage]()
          for i in 1...25 {
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
        let collectionWidth = self.bounds.width
        let cellWidth =  collectionWidth / CGFloat(_numberOfColumns)
        cell.heightAnchor.constraint(equalToConstant: cellWidth).isActive = true
        cell.widthAnchor.constraint(equalToConstant: cellWidth).isActive = true

        return cell
    }
}
