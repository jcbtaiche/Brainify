//
//  FirstViewController.swift
//  Blueprint
//
//  Created by JC B on 2018-02-18.
//  Copyright © 2018 JC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Interests: UILabel!
    @IBOutlet weak var HitMeUp: UIButton!
    @IBOutlet weak var ShakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jeremyGif = UIImage.gifImageWithName("REALImage")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height - 20)
        view.addSubview(imageView)
        view.sendSubview(toBack: imageView)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func HitMeUpPressed(_ sender: Any) {
    }
    @IBAction func ShakeButtonTapped(_ sender: UIButton) {
        // 1
        let maxIndex = UInt32(Peoples.count)
        // 2
        let randomIndex = Int(arc4random_uniform(maxIndex))

        // 3
        Image.image = Peoples[randomIndex].Image
        Name.text = Peoples[randomIndex].Name
        Interests.text = Peoples[randomIndex].Interests
    }

}
struct People {
    var Image: UIImage
    var Name: String
    var Interests: String
}

var Paulina = People(Image: UIImage(named: "PaulinaSymala.png")!, Name: "Paulina Symala", Interests: "E-commerce, Fintech, Consultancy")

var Qian = People(Image: UIImage(named: "QianHuiSun.png")!, Name: "Qian Hui Sun", Interests: "Law, Social Justice, Computer Vision")

var JC = People(Image: UIImage(named: "JCBtaiche.png")!, Name: "JC Btaiche", Interests: "Smart Vehicules, Space Exploration, Cryptography")

var Peoples = [Paulina, Qian, JC]

