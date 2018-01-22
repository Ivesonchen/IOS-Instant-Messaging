//
//  AppDelegate.swift
//  Chat
//
//  Created by Ivesonchen on 16/5/30.
//  Copyright © 2016年 Ivesonchen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,RCIMUserInfoDataSource {
    
    var window: UIWindow?
    
    func getUserInfoWithUserId(userId: String!, completion: ((RCUserInfo!) -> Void)!) {
        let userInfo = RCUserInfo()
        
        userInfo.userId = userId
        
        switch userId{
        case "Invoker":
            userInfo.name = "祈求者"
            userInfo.portraitUri = "http://img3.imgtn.bdimg.com/it/u=1188917833,3508543422&fm=21&gp=0.jpg"
        case "Lina":
            userInfo.name = "莉娜"
            userInfo.portraitUri = "http://img3.imgtn.bdimg.com/it/u=2039955707,4090946726&fm=21&gp=0.jpg"
        case "Zeus":
            userInfo.name = "宙斯"
            userInfo.portraitUri = "http://img0.imgtn.bdimg.com/it/u=3419898735,191414199&fm=21&gp=0.jpg"
        default:
            print("No such userInfo")
        }
        return completion(userInfo)
    }
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //查询保存的TOKEN
        //       let tokenCache = NSUserDefaults.standardUserDefaults().objectForKey("kDeviceToken")as? String
        
        //初始化APPKey
        RCIM.sharedRCIM().initWithAppKey("8luwapkvu3oll")
        
                RCIM.sharedRCIM().connectWithToken("1BoSFQkH4sb51qE31KcAJ22XfOWE7QazYc8ebTOox1W6oMfKEvqBVaJdxL9/rW55AWHGvLLPQY/TeRHdD88ehA==",
                                                   success: { (userId) -> Void in
                                                    print("登陆成功。当前登录的用户ID：\(userId)")
                    }, error: { (status) -> Void in
                        print("登陆的错误码为:\(status.rawValue)")
                    }, tokenIncorrect: {
                        //token过期或者不正确。
                        //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
                        //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
                        print("token错误")
                })//以Zeus账户初始化
        
        
//        RCIM.sharedRCIM().connectWithToken("IPrjpsvTPyz/AAXfvP/lE1kf2gVL8r2TAtEwpsveUYLdBSKTecz8AbTnl0DlROvhQ8FYP69ed8aApl0l25Gzyw==",
//                                           success: { (userId) -> Void in
//                                            print("登陆成功。当前登录的用户ID：\(userId)")
//            }, error: { (status) -> Void in
//                print("登陆的错误码为:\(status.rawValue)")
//            }, tokenIncorrect: {
//                //token过期或者不正确。
//                //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
//                //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
//                print("token错误")
//        })//以Invoker账户初始化
        
        
        //        RCIM.sharedRCIM().connectWithToken("TYdJ3v/cCGAi/zl4Xme+qR/cYbHVwXopVL1JOwvYH0kAIFdYPjcQ/cmSDc5QSEPpqvOc16Ov48a2fYOzbpFeUw==",
        //                                           success: { (userId) -> Void in
        //                                            print("登陆成功。当前登录的用户ID：\(userId)")
        //            }, error: { (status) -> Void in
        //                print("登陆的错误码为:\(status.rawValue)")
        //            }, tokenIncorrect: {
        //                //token过期或者不正确。
        //                //如果设置了token有效期并且token过期，请重新请求您的服务器获取新的token
        //                //如果没有设置token有效期却提示token错误，请检查您客户端和服务器的appkey是否匹配，还有检查您获取token的流程。
        //                print("token错误")
        //        })//以Lina账户初始化
        
        

        
        
        RCIM.sharedRCIM().userInfoDataSource = self
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

