//
//  SceneDelegate.swift
//  Bankey
//
//  Created by Erick El nino on 2022/12/24.
//  Copyright © 2022 Erick El nino. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    var hasOnboarded = UserDefaults.standard.bool(forKey: "hasOnboarded")
    
    
    let MyLoginViewcontroller = LoginViewController()
    let controller = OnboardingContainerViewController()
    let welcomeController = WelcomeViewController()
    let mainViewController = MaintabBarViewController()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        window?.makeKeyAndVisible()
        MyLoginViewcontroller.delegate = self
        controller.delegate = self
        welcomeController.delegate = self
        
        window?.rootViewController = mainViewController
    }
    
    
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    
}

extension SceneDelegate: LoginViewControllerDelegate
{
    
    func didLogin() {
        
        if hasOnboarded
        {
            setRootviewController(vc: welcomeController)
            
        }else
        {
            setRootviewController(vc: controller)
        }
        
    }
}

extension SceneDelegate: OnboardingContainerViewControllerDelegate
{
    func didFinishOnboarding() {
        setRootviewController(vc: welcomeController)
        hasOnboarded = true
        UserDefaults.standard.set(hasOnboarded, forKey: "hasOnboarded")
        UserDefaults.standard.synchronize()
    }
}

extension SceneDelegate: WelcomeViewControllerDelegate
{
    func didLogoutbuttonPressed() {
        setRootviewController(vc: MyLoginViewcontroller)
    }
}

extension SceneDelegate
{
    func setRootviewController(vc: UIViewController , animated: Bool = true)
    {
        guard animated , let window = self.window else
        { 
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
            
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        
        UIView.transition(with: window,
                          duration: 0.7                                                                                                                                                                                  ,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }
}

