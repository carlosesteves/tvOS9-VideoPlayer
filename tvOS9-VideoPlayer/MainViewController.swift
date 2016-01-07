//
//  MainViewController.swift
//  tvOS9-VideoPlayer
//
//  Created by Wlad Dicario on 12/09/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var urlRTP1 = "http://rtp-pull-live.hls.adaptive.level3.net/liverepeater/smil:rtp1.smil/playlist.m3u8"
    var urlRTP2 = "http://rtp-pull-live.hls.adaptive.level3.net/liverepeater/smil:rtp2.smil/playlist.m3u8"
    var urlRTP3 = "http://rtp-pull-live.hls.adaptive.level3.net/liverepeater/smil:rtpn.smil/playlist.m3u8"
    var urlSIC = "http://noscdn1.connectedviews.com:1935/live/sic.stream/chunklist_w1329392400.m3u8"
    var urlSICN = "http://213.13.26.11:1935/live/sicnoticias/livestream.m3u8"
    var urlTvi = "http://video-live.iol.pt:1935/live_tvi/smil:LIVE_TVI/playlist.m3u8"
    var urlTvi24 = "http://video-live.iol.pt:1935/live_tvi/smil:LIVE_TVI/chunklist_w1284637725_b814000.m3u8"
    
    
    // MARK: - Interface
    @IBOutlet weak var playButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Navigation
    @IBAction func playTVI(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlTvi)
    }
    
    @IBAction func playTVI24(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlTvi24)
    }
    
    @IBAction func playSIC(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlSIC)
    }
    
    @IBAction func playSICN(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlSICN)
    }
    
    @IBAction func playRTP1(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlRTP1)
    }
    
    @IBAction func playRTP2(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlRTP2)
    }
    
    @IBAction func playRTP3(sender: AnyObject) {
        self.performSegueWithIdentifier("SegueTV", sender: urlRTP3)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SegueTV" {
            if let videoPlayerController = segue.destinationViewController as? VideoPlayerViewController {
                videoPlayerController.url = sender as! String
            }
        }
    }
}
