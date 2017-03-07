//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Abhishek Sisodia on 2017-02-27.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var videoInfoList = [VideoInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = VideoInfo(imageURL: "https://i.ytimg.com/vi/N4uP2RHWhio/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/34Na4j8AVgA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Reminder")
        
        let v2 = VideoInfo(imageURL: "http://www.etonline.com/news/2016/09/24271863/1280_theweeknd_album_twitter.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JZjAg6fK-BQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Starboy")
        
        videoInfoList.append(v1)
        videoInfoList.append(v2)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let videoInfo = videoInfoList[indexPath.row]
            
            cell.updateUI(videoInfo: videoInfo)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoInfoList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let videoInfo = videoInfoList[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: videoInfo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let video = sender as? VideoInfo {
                destination.videoInfo = video
            }
        }
    }
}

