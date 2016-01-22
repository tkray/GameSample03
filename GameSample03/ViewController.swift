import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = self.view as! SKView
        // FPSの表示
        skView.showsFPS = true
        // Nodeの数を表示
        skView.showsNodeCount = true
        
        // viewと同じサイズのGameSceneを作成
        let scene = GameScene(size: skView.bounds.size)
        
        // let scene = GameScene2(size: skView.bounds.size)
        // viewにsceneを表示
        skView.presentScene(scene)
    }
}