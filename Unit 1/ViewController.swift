//
//  ViewController.swift
//  Unit 1
//
//  Created by Kayla Son on 2/27/23.
//

import UIKit

class ViewController: UIViewController {
    // Create individual Desctiptions using Descript model
    let basics = Descript(title:"Basic Info", image: UIImage(named: "Athanasia")!, context: "My name is Kayla Son and I am currently an Sophmore attending University of California - Irvine. I am aspiring to become a software engineer that specializes in mobile developemnt! Some random facts about me are: I sleep with my eyes open sometimes, my favorite color is blue, and I like pineapples on my pizza!")
    let hobbies = Descript(title:"Hobbies", image: UIImage(named: "spotify")!, context: "My all-time hobbies are embroidering, trying out new restuarants, and reading manhua! However recently, I've been really into watching Kdramas, and and attempting to do new makeup looks! For the Kdrama addicts, my favorite ones are Twenty-Five Twenty-One, Youth of May, and Alchemy of Souls!")
    let music = Descript(title:"Favorite Songs", image: UIImage(named: "2521")!, context: "As of recently, I really enjoy listening to chill and lofi music. Some of the current songs that I am listening to are: Pano by Zack Tabudlo, Airplane Thoughts by dhruv, and Snow on the Beach by the one and only, Ms. Taylor Swift. In fact, I'm a really huge swiftie and is super excited to see her in the summer! Some of my other favorite artists are IU, SZA, and is a HUGE kpop fan!")
    
    //Array fro sorting
    var list: [Descript] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //storiing
        list = [basics, hobbies, music]
        
    }
    
    @IBAction func didTapDetail(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.list = list[0]
            } else if tappedView.tag == 1 {
                detailViewController.list = list[1]
            } else if tappedView.tag == 2 {
                detailViewController.list = list[2]
            } else {
                print("no selection made.")
            }
        }
    }
    
}

