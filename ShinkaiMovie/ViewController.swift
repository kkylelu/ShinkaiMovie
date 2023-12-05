//
//  ViewController.swift
//  ShinkaiMovie
//
//  Created by Kyle Lu on 2023/12/4.
//

import UIKit


class ViewController: UIViewController {
    
    // 定義 String 陣列，裡面包含了三部電影名稱。
    let movie = ["yourName", "weather", "suzume"]
    // 定義 String 陣列，裡面包含了三部電影介紹。
    let intro = [
    """
    鄉村女孩三葉和都市男孩瀧透過夢中交換身份，他們的經歷和命運交織，探索時間、記憶與深刻的人際聯繫。
    """,
    """
    逃家的少年帆高和擁有改變天氣神奇力量的少女陽菜，在多雨的東京相遇，展開青春、選擇與犧牲的冒險。
    """,
    """
    16歲的鈴芽在宮崎遇到能關閉異界「門」的草太。他們共同對抗災難之源「蚯蚓」，穿梭日本各地冒險，面對生死、勇氣和命運的挑戰。
    """
    
    ]
    
    var index = 0
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var moviePageControl: UIPageControl!
    
    func updateUI(){
        movieImageView.image = UIImage(named: movie[index])
        movieLabel.text = intro[index]
        moviePageControl.currentPage = index
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 播放音樂
    func playSound () {
        
    }
    
    // 下一部電影
    // 按下按鈕就會連動 view 和 label
    
    @IBAction func next(_ sender: Any) {
        // `% movie.count` 以 % 取餘數等於0，只要選到最後一部的下一次，就會回到第一部重來，達到無限循環的效果
        index = (index + 1) % movie.count
        updateUI()
        
    }
   
    
    
    // 上一部電影
    

}

#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "ViewController")
}
