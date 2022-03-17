//
//  SceneDelegate.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.backgroundColor = .systemBackground
        window?.rootViewController = TabBarController()
        window?.tintColor = UIColor.mainTintColor
        window?.makeKeyAndVisible()
        
    }

}

