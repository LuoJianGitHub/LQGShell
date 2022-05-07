//
//  AppDelegate.swift
//  LQGShell
//
//  Created by 罗建
//  Copyright (c) 2022 罗建. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import LQGBaseAppDelegate
import LQGBaseView
import LQGCTMediator
import LQGUser

typealias BlockType = @convention(block) ([AnyHashable: Any]?) -> Void

@UIApplicationMain
class AppDelegate: LQGBaseAppDelegate {

    override init() {
        super.init()
                
        self.needShowGuideVCBlock = {
            return !UserDefaults.standard.bool(forKey: "showedGuideVC")
        }
        
        self.needShowSignVCBlock = {
            return !LQGUserManager.shared.userStatus
        }
        
        self.needShowAdvertVCBlock = {
            return true
        }
        
        self.getGuideVCBlock = {
            return CT().performTarget("Guide", action: "getGuideVC", params: [
                kCTMediatorParamsKeySwiftTargetModuleName: "LQGGuide_Category"
            ], shouldCacheTarget: false) as? UIViewController
        }
                
        self.getSignVCBlock = {
            let vc = CT().performTarget("Sign", action: "getRootVC", params: [
                kCTMediatorParamsKeySwiftTargetModuleName: "LQGSign_Category",
                "signInSuccessCompletion": {
                    let block: BlockType = { userInfo in
                        LQGUserManager.shared.signIn(userInfo: userInfo)
                    }
                    return unsafeBitCast(block as BlockType, to: AnyObject.self)
                }()
            ], shouldCacheTarget: false) as? UIViewController
            if vc == nil {
                return nil
            }
            return LQGBaseNavigationController.init(rootViewController: vc!)
        }
        
        self.getMainVCBlock = {
            return CT().performTarget("Main", action: "getMainVC", params: [
                kCTMediatorParamsKeySwiftTargetModuleName: "LQGMain_Category"
            ], shouldCacheTarget: false) as? UIViewController
        }
        
        self.getAdvertVCBlock = {
            return CT().performTarget("Advert", action: "getAdvertVC", params: [
                kCTMediatorParamsKeySwiftTargetModuleName: "LQGAdvert_Category"
            ], shouldCacheTarget: false) as? UIViewController
        }
    }
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        let status = super.application(application, didFinishLaunchingWithOptions: launchOptions)
                
        UserDefaults.standard.rx.observe(Bool.self, "showedGuideVC", options: .new).subscribe { (value) in
            self.lqg_setupRootViewController()
        } onDisposed: {}
        
        LQGUserManager.shared.rx.observe(Bool.self, "userStatus", options: .new).subscribe { (userStatus) in
            self.lqg_setupRootViewController()
        } onDisposed: {}

        return status
    }
    
}
