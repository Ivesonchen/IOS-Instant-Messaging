//
//  ConversationViewController.swift
//  Chat
//
//  Created by Ivesonchen on 16/5/30.
//  Copyright © 2016年 Ivesonchen. All rights reserved.
//

import UIKit

class ConversationViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

 

//        self.targetId = "Invoker"
//        self.conversationType = .ConversationType_PRIVATE
//        self.title = "祈求者"
        
        self.targetId = "Lina"
        self.conversationType = .ConversationType_PRIVATE
        self.title = "莉娜"
//
//        self.targetId = "Zeus"
//        self.conversationType = .ConversationType_PRIVATE
//        self.title = "宙斯"

        
  
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
