//
//  DetailViewController.swift
//  UISearchController1
//
//  Created by Cntt04 on 5/3/17.
//  Copyright © 2017 Cntt04. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var detailDescriptionLabel: UILabel!
    //@IBOutlet weak var candyImageView: UIImageView!
    
    @IBOutlet weak var detailDescriptionLable: UILabel!
    
    @IBOutlet weak var candyImageView: UIImageView!
    
    var detailCandy: Candy? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let detailCandy = detailCandy {
            if let detailDescriptionLable = detailDescriptionLable, let candyImageView = candyImageView {
                detailDescriptionLable.text = detailCandy.name
                candyImageView.image = UIImage(named: detailCandy.name)
                title = detailCandy.category
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
