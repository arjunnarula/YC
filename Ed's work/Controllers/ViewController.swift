//
//  ViewController.swift
//  Ed's work
//
//  Created by Arjun Narula on 23/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - Properties
    var viewModelData = [CardsDataModel(bgColor: UIColor(red:0.96, green:0.81, blue:0.46, alpha:1.0), text: "Kim Kardashian", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.29, green:0.64, blue:0.96, alpha:1.0), text: "Gigi Hadid", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0), text: "Cara Parker", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.69, green:0.52, blue:0.38, alpha:1.0), text: "Panda", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.90, green:0.99, blue:0.97, alpha:1.0), text: "Subway", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.83, green:0.82, blue:0.69, alpha:1.0), text: "Robot", image: "profile_pic")]
    
    //MARK: - Properties
    var viewModelData2 = [CardsDataModel(bgColor: UIColor(red:0.96, green:0.81, blue:0.46, alpha:1.0), text: "Anna Walker", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.29, green:0.64, blue:0.96, alpha:1.0), text: "Gigi Hadid", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.29, green:0.63, blue:0.49, alpha:1.0), text: "Cara Parker", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.69, green:0.52, blue:0.38, alpha:1.0), text: "Panda", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.90, green:0.99, blue:0.97, alpha:1.0), text: "Subway", image: "profile_pic"),
                         CardsDataModel(bgColor: UIColor(red:0.83, green:0.82, blue:0.69, alpha:1.0), text: "Robot", image: "profile_pic")]
    
    
    
    var stackContainer : StackContainerView!
    var profileController : ProfileController!

    override func loadView() {
        view = UIView()
        view.backgroundColor = UIColor(red:0.93, green:0.93, blue:0.93, alpha:1.0)
        stackContainer = StackContainerView()
        profileController = ProfileController()
        stackContainer.viewController = self
        view.addSubview(stackContainer)
        configureStackContainer()
        stackContainer.translatesAutoresizingMaskIntoConstraints = false
        //configureNavigationBarButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let string = UserDefaults.standard.string(forKey: "profile"){
            if string.contains("football"){
                stackContainer.dataSource = self
                print("FOOTBALL")
                let defaults = UserDefaults.standard
                defaults.set("Hi, I am Ed. I study at Imperial College London, and I am about to go into my third year. I enjoy watching Netflix, going out with my friends, and doing Archery, and footbal.", forKey: "profile")
            }
        }
    }
    
    func openGigi(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Offers", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "OffersGigi") as! OffersGigi
        self.present(newViewController, animated: true, completion: nil)
    }
    
    func openAnna(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Offers", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "OffersAnna") as! OffersAnna
        self.present(newViewController, animated: true, completion: nil)
    }
    
    func openKim(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Offers", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "OffersKim") as! OffersKim
        self.present(newViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackContainer.dataSource = self
        print(self)
    }
    
    //MARK: - Configurations
    func configureStackContainer() {
        stackContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
        stackContainer.widthAnchor.constraint(equalToConstant: 300).isActive = true
        stackContainer.heightAnchor.constraint(equalToConstant: 400).isActive = true
        stackContainer.viewController = self
    }
}

extension ViewController : SwipeCardsDataSource {
    
    func numberOfCardsToShow() -> Int {
        if let string = UserDefaults.standard.string(forKey: "profile"){
            if string.contains("football"){
                 return viewModelData2.count
            }
        }
        return viewModelData.count
    }
    
    func card(at index: Int) -> SwipeCardView {
        let card = SwipeCardView()
        if let string = UserDefaults.standard.string(forKey: "profile"){
            if string.contains("football"){
                card.dataSource = viewModelData2[index]
            } else {
                card.dataSource = viewModelData[index]
            }
        }
        return card
    }
    
    func emptyView() -> UIView? {
        return nil
    }
    
    
}
