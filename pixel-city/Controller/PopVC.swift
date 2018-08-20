//
//  PopVC.swift
//  pixel-city
//
//  Created by Richard Cummings on 2018-08-19.
//  Copyright © 2018 Richard Cummings. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var ownerLbl: UILabel!
    
    var passedImage: UIImage!
    var imgTitle: String!
    var imgOwner: String!
    
    func initData(forImage popImage: PopImage) {
        self.passedImage = popImage.image
        guard let title = popImage.title else { return }
        guard let owner = popImage.owner else { return }
        
        self.imgTitle = title
        self.imgOwner = owner
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addSingleTap()
        addDoubleTap()
        titleLbl.text = imgTitle == "" ? "Untitled" : imgTitle
        ownerLbl.text = imgOwner == "" ? "Photo by: Unknown" : "Photo by: \(imgOwner)"
    }
    
    func addSingleTap() {
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasTapped))
        singleTap.numberOfTapsRequired = 1
        singleTap.delegate = self
        view.addGestureRecognizer(singleTap)
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasTapped() {
        titleView.isHidden = !titleView.isHidden
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
