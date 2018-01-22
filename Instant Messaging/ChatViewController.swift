//
//  ChatViewController.swift
//  Chat
//
//  Created by Ivesonchen on 16/6/19.
//  Copyright © 2016年 Ivesonchen. All rights reserved.
//

import Foundation

class ChatViewController : RCConversationListViewController {
    override func viewDidLoad() {
        //重写显示相关的接口，必须先调用super，否则会屏蔽SDK默认的处理
        super.viewDidLoad()
        
        //设置需要显示哪些类型的会话
        self.setDisplayConversationTypes(
            [RCConversationType.ConversationType_PRIVATE.rawValue,
            RCConversationType.ConversationType_DISCUSSION.rawValue,
            RCConversationType.ConversationType_CHATROOM.rawValue,
            RCConversationType.ConversationType_GROUP.rawValue,
            RCConversationType.ConversationType_APPSERVICE.rawValue,
            RCConversationType.ConversationType_SYSTEM.rawValue])
        //设置需要将哪些类型的会话在会话列表中聚合显示
//        self.setCollectionConversationType([RCConversationType.ConversationType_DISCUSSION.rawValue,
//            RCConversationType.ConversationType_GROUP.rawValue])
    self.refreshConversationTableViewIfNeeded()
        
//        let chatList = ChatViewController()
//        self.navigationController?.pushViewController(chatList, animated: true)
        
        }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.tabBar.hidden = false
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        self.tabBarController?.tabBar.hidden = true
        
        
    }
    
    override func onSelectedTableRow(conversationModelType: RCConversationModelType, conversationModel model: RCConversationModel!, atIndexPath indexPath: NSIndexPath!) {
        
        
        let conVC = RCConversationViewController()
        conVC.targetId = model.targetId
        conVC.conversationType = RCConversationType.ConversationType_PRIVATE
        conVC.title = model.conversationTitle
//        self.tabBarController?.tabBar.hidden = true
        self.navigationController?.pushViewController(conVC, animated: true)
  
        
    }
}