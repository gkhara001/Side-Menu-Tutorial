//
//  HomeController.swift
//  SideMenuTutorial
//
//  Created by Gagan Khara on 26/05/19.
//  Copyright © 2019 Gagan Khara. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }

    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor(red:0.23, green:0.18, blue:0.58, alpha:1.0)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu Tutorial"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
