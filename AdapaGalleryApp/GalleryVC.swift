//
//  GalleryVC.swift
//  AdapaGalleryApp
//
//  Created by Adapa,Venkata Rayudu on 3/15/23.
//

import UIKit

class GalleryVC: UIViewController {
    var allCategories: [Category] = []
    var currentPictureIndex = 0
    var currentCategory: Category?
    var currentPicture: Picture?
    
    var searchIdx=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //pictureIV.image = UIImage(named: "folder")
        searchTF.addTarget(self, action: #selector(searchTextFieldDidChange (_:)), for: .editingChanged)
        
        searchBTN.isEnabled = false
        
        commentTF.isEnabled = false
        saveBTN.isEnabled = false
        resetBTN.isEnabled = false
        pictureCommentsTV.isEditable = false
        
        category.append(Category(with: AppConstants.carsKeywords, pictureNames: [Picture(name: AppConstants.carsPictures[0]),
                                                                                 Picture(name: AppConstants.carsPictures[1]),
                                                                                 Picture(name: AppConstants.carsPictures[2]),
                                                                                 Picture(name: AppConstants.carsPictures[3]),
                                                                                 Picture(name: AppConstants.carsPictures[4])]))
        
        
        category.append(Category(with: AppConstants.DogsKeywords, pictureNames: [Picture(name: AppConstants.DogsPictures[0]),
                                                                                 Picture(name: AppConstants.DogsPictures[1]),
                                                                                 Picture(name: AppConstants.DogsPictures[2]),
                                                                                 Picture(name: AppConstants.DogsPictures[3]),
                                                                                 Picture(name: AppConstants.DogsPictures[4])]))
        
        
        category.append(Category(with: AppConstants.flowersKeywords, pictureNames: [Picture(name: AppConstants.flowersPictures[0]),
                                                                                    Picture(name: AppConstants.flowersPictures[1]),
                                                                                    Picture(name: AppConstants.flowersPictures[2]),
                                                                                    Picture(name: AppConstants.flowersPictures[3]),
                                                                                    Picture(name: AppConstants.flowersPictures[4])])
        )
        
        category.append(Category(with: AppConstants.SnowAnimalsKeywords, pictureNames: [Picture(name: AppConstants.SnowAnimalsPictures[0]),
                                                                                        Picture(name: AppConstants.SnowAnimalsPictures[1]),
                                                                                        Picture(name: AppConstants.SnowAnimalsPictures[2]),
                                                                                        Picture(name: AppConstants.SnowAnimalsPictures[3]),
                                                                                        Picture(name: AppConstants.SnowAnimalsPictures[4])])
        )
        
        
        
        
        
    }
    var  category:[Category] = []
    
    @IBOutlet weak var searchTF: UITextField!
    
    
    @IBOutlet weak var commentTF: UITextField!
    
    
    @IBOutlet weak var pictureIV: UIImageView!{
        didSet{
            self.pictureIV.isUserInteractionEnabled = true
            
            let tripleTap = UITapGestureRecognizer(target: self, action: #selector(tripleTap))
            tripleTap.numberOfTapsRequired = 3
            pictureIV.addGestureRecognizer(tripleTap)
            
            let doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTap))
            doubleTap.numberOfTapsRequired = 2
            doubleTap.require(toFail: tripleTap)
            pictureIV.addGestureRecognizer(doubleTap)
            
            let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
            leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
            pictureIV.addGestureRecognizer(leftSwipe)
            
            let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector( swipeRight))
            rightSwipe.direction = UISwipeGestureRecognizer.Direction.right
            pictureIV.addGestureRecognizer(rightSwipe)
        }
        
        
    }
    
    
    @IBOutlet weak var pictureCommentsTV: UITextView!
    
    
    @IBOutlet weak var searchBTN: UIButton!
    func updateSearch(idx:Int){
        if AppConstants.carsKeywords.contains(searchTF.text!){
            
            
          }
        if AppConstants.DogsKeywords.contains(searchTF.text!){
            
            }
        if AppConstants.flowersKeywords.contains(searchTF.text!){
            
            }
        if AppConstants.SnowAnimalsKeywords.contains(searchTF.text!){
            
            }
    }
    
    @IBAction func search(_ sender: UIButton) {
       
        
        guard let searchKeyword = searchTF.text else {
            return
        }
        updateSearch(idx: 0)
    
        
        
    }
    
    
    @IBOutlet weak var likeBTN: UIButton!
    
    
    @IBAction func like(_ sender: UIButton) {
        var likeCount = 0
        func like() {
           likeCount += 1
           print("Post liked! Total likes: \(likeCount)")
            
        }
        
    }
    
    @IBOutlet weak var dislikeBTN: UIButton!
    
    
    @IBAction func dislike(_ sender: UIButton) {
        var dislikeCount = 0
        func dislike() {
            dislikeCount += 1
           print("Post liked! Total likes: \(dislikeCount)")
            
        }
        
    }
    
    
    @IBOutlet weak var saveBTN: UIButton!
    
    
    @IBAction func save(_ sender: UIButton) {
        if let comment = commentTF.text {
            currentPicture?.comments.append(comment)
            
        }
        
    }
    
    
    @IBOutlet weak var resetBTN: UIButton!
    
    @objc func searchTextFieldDidChange(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            searchBTN.isEnabled = true
        } else {
            searchBTN.isEnabled = false
        }
    }
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        
        
        resetBTN.isEnabled = false
        searchBTN.isEnabled = true
        searchTF.text = ""
        likeBTN.setTitle("👍", for: .normal)
        dislikeBTN.setTitle("👎", for: .normal)
        pictureIV.image = UIImage(named: "folder")
        
        
        
    }
    
    @objc private func swipeRight(_ sender: UISwipeGestureRecognizer){
    }
    @objc private func swipeLeft(_ sender: UISwipeGestureRecognizer){
    }
    @objc private func doubleTap(_ sender: UISwipeGestureRecognizer){
    }
    @objc private func tripleTap(_ sender: UISwipeGestureRecognizer){
    }
}


