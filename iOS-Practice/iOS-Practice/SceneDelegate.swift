//
//  SceneDelegate.swift
//  iOS-Practice
//
//  Created by Hamoon Jamshidi Meydandar on 2020. 08. 12..
//
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        guard let controller = UIStoryboard(name: "Instagram", bundle: nil)
        .instantiateInitialViewController() else { return }
        window.rootViewController = controller
        self.window = window
        window.makeKeyAndVisible()
    }
}

