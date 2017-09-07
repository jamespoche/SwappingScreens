//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by jamespoyu on 2017/9/4.
//  Copyright © 2017年 Devslopes. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        
            }
  
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        //trigger the segue programmatically
    let songTitle = "Quit Playing Games With My Heart"
       performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    // prepare for segue is called before viewdidload is called on the PlaySongVC 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC
        {
           //set the selected song 
            if let song = sender as? String{
            destination.selectedSong = song
            }
        }
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
