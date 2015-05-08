import UIKit
import Foundation
import QuartzCore

class ViewController: UIViewController {

    var bubble = bubbleView()
    override func viewDidLoad() {
        super.viewDidLoad()
        bubble.frame = CGRectMake(self.view.frame.width/2-50, self.view.frame.height/2-50, 100, 100)
        bubble.layer.cornerRadius = bubble.frame.size.width/2
        // bubble.layer.borderWidth = 1.0
        bubble.clipsToBounds = true // it is necessory to add when create a round rect or circle!
        bubble.backgroundColor = UIColor.redColor()
        bubble.thumbnail.image = UIImage(named: "bubble")
        self.view.addSubview(bubble)
        bubble.slideInFromLeft(duration: 0.25, completionDelegate: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
