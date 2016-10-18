//
//  ViewController.swift
//  iOSUnsplash
//
//  Created by Zuo Hao on 2016/10/17.
//  Copyright © 2016 Howie Zuo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        
        let _ = APIClient.getPhotos()
        .subscribe(onNext: { (photos) in
                self.photos = photos
            
                self.tableView.reloadData()
            }, onError: { (error) in
                //
            }, onCompleted: { 
                //
            }) { 
                //
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainCell
        
        let photo = photos[indexPath.item]
        cell.showCell(photo)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let width = view.frame.size.width
        let h = width / 1.6
        return h
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        let width = view.frame.size.width
        let h = width / 1.6
        return h
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let photo = self.photos[indexPath.item]
        let storyBoard = UIStoryboard(name: "Detail", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.photo = photo
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

