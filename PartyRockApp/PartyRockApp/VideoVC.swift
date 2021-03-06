//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Abhishek Sisodia on 2017-03-05.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _videoInfo: VideoInfo!
    
    var videoInfo: VideoInfo {
        get {
            return _videoInfo
        } set {
            _videoInfo = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = videoInfo.videoTitle
        webView.loadHTMLString(videoInfo.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
