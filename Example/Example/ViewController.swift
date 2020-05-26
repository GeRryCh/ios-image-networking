//
//  ViewController.swift
//  Example
//
//  Created by German Velibekov on 26/05/2020.
//  Copyright © 2020 german. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageURL = URL(string: "https://live.staticflickr.com/4523/26563747399_5728879a74_b.jpg")!
        imageView.nw.image(from: imageURL)
    }


}

