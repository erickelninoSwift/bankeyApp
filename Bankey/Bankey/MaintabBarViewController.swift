//
//  MaintabBarViewController.swift
//  Bankey
//
//  Created by Erick El nino on 2023/01/01.
//  Copyright © 2023 Erick El nino. All rights reserved.
//

import UIKit

let appColor: UIColor = .systemTeal

class MaintabBarViewController: UITabBarController
{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         style()
         layout()
         configureTabController()
    }
    
    
}
extension MaintabBarViewController
{
    private func style()
    {
    
    }
    
    private func layout()
    {
        
    }
    
    private func configureTabController()
    {
//        setStatus()
        
         
         let viewcontroller1 = AccountSummaryViewController()
         let viewcontroller2 = MoveMoneyViewController()
         let viewcontroller3 = MoreViewController()
        
        viewcontroller1.tabBarItem = UITabBarItem(title: "Summary", image: UIImage(systemName: "list.bullet"), tag: 0)
        viewcontroller2.tabBarItem = UITabBarItem(title: "Move Money", image: UIImage(systemName: "creditcard"), tag: 1)
        viewcontroller3.tabBarItem = UITabBarItem(title: "More Money", image: UIImage(systemName: "ellipsis.circle"), tag: 2)
        
        let summary = UINavigationController(rootViewController: viewcontroller1)
        let moveMoney = UINavigationController(rootViewController: viewcontroller2)
        let moreVc = UINavigationController(rootViewController: viewcontroller3)
        

        hideNavigationController(navigation: summary.navigationBar)
        moveMoney.navigationBar.isHidden = true
        moreVc.navigationBar.isHidden = true
        
        self.viewControllers = [summary,moveMoney,moreVc]
        
        tabBar.tintColor = appColor
        tabBar.isTranslucent = false
        self.selectedIndex = 0
        
        
    }
    
    
    func hideNavigationController(navigation: UINavigationBar)
    {
        let img = UIImage()
        navigation.shadowImage = img
        navigation.setBackgroundImage(img, for: .default)
        navigation.isTranslucent = false
    }
    
    func setStatus()
    {
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithTransparentBackground()
        
        navigationAppearance.backgroundColor = appColor
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
    }

}

extension MaintabBarViewController
{
    
}


class AccountSummaryViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
    }
}

class MoveMoneyViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
    }
}

class MoreViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
    }
}
