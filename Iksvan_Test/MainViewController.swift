//
//  ViewController.swift
//  Iksvan_Test
//
//  Created by Veranika Razdabudzka on 9.09.22.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let xib = "CustomCollectionViewCell"
    
    var position: Int = 0
    var musics = Music.myMusic()
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: xib, bundle: nil), forCellWithReuseIdentifier: xib)
        
        play()
        
    }
    
    
    @IBAction func tapBackButton(_ sender: UIButton) {
    }
    
    @IBAction func tapPlayButton(_ sender: UIButton) {
        player?.play()
    }
    
    @IBAction func tapForwardButton(_ sender: UIButton) {
    }
    
    func play() {
        let music = musics[position]
        player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: music.trackName, ofType: "mp3")!))
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: xib, for: indexPath) as! CustomCollectionViewCell
        cell.musicImageView.image = UIImage(named: musics[indexPath.row].image)
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: collectionView.bounds.size.width - 50 , height: collectionView.bounds.size.height - 20)
        }
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 30
        }

        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 20
        }

        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets.init(top: 10, left: 30, bottom: 10, right: 30)
        }
}

