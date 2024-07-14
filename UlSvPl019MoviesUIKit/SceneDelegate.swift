//
//  SceneDelegate.swift
//  UlSvPl019MoviesUIKit
//
//  Created by joe on 7/14/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = MoviesViewController()
        window.makeKeyAndVisible()
        self.window = window
    }
}

