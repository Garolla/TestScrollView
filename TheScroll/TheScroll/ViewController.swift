//
//  ViewController.swift
//  TheScroll
//
//  Created by Emanuele Garolla on 09/08/2017.
//  Copyright © 2017 Emanuele Garolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        print("Scroll Width \(scrollWidth)")
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height / 2) - 75, width: 150, height: 150)
        }
//        print("Count : \(images.count)")
//        scrollView.backgroundColor = UIColor.purple
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize( width: contentWidth - scrollWidth, height : view.frame.size.height )
    }
}

