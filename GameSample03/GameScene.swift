import SpriteKit

class GameScene: SKScene {
    
    /// Sceneが表示された時に呼ばれる
    override func didMoveToView(view: SKView) {
        
        // 画面の背景色を変更
        self.backgroundColor = UIColor.whiteColor()
        
        // 犬の画像のスプライトを作成
        let sprite = SKSpriteNode(imageNamed: "dog.png")
        
        // 配置位置を決める
        sprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        // サイズを変更
        sprite.size = CGSizeMake(100, 100)
        
        // 画像を変更
        sprite.texture = SKTexture(imageNamed: "cat.png")
        
        // スプライトの基点を変更
        sprite.anchorPoint = CGPoint(x: 1.0, y: 1.0)
        
        // 配置する
        self.addChild(sprite)
    }
}