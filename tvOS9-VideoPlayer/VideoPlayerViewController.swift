//
//  VideoPlayerViewController.swift
//  tvOS9-VideoPlayer
//
//  Created by Wlad Dicario on 12/09/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class VideoPlayerViewController: AVPlayerViewController {
    
    // MARK: - Properties
    var url = ""
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setVideoPlayer()
    }
   
}

//MARK: - VideoPlayer -> VideoPlayerViewController Extension
typealias VideoPlayer = VideoPlayerViewController
extension VideoPlayer {
    
    /// set video player for view
    func setVideoPlayer() {
        // AVPlayer Instance with NSURL
        player = AVPlayer(URL: NSURL(string: url)!)
        
        // Just Play!
        player?.play()
    }
}