import SpriteKit

class GameScene2: SKScene {
    
    
    var dogSprites = [SKSpriteNode]()
    
    
    /// Sceneが表示された時に呼ばれる
    override func didMoveToView(view: SKView) {
        
        // 画面の背景色を変更
        self.backgroundColor = UIColor.whiteColor()
        
        // SKSprteNodeの配列を作成
        self.crateDogSprites()
        
        // 配列分画面に表示する
        for dogSprite in dogSprites {
            self.addChild(dogSprite)
        }
    }
    
    /// SKSpriteNodeの配列を作成する
    private func crateDogSprites() {
        
        for i in 0...5 {
            // 犬の画像のスプライトを作成
            let dogSprite = SKSpriteNode(imageNamed: "dog.png")
            
            // 配置位置を決める
            dogSprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMaxY(self.frame) - CGFloat(i * 100) - 80)
            
            // サイズを変更
            dogSprite.size = CGSizeMake(90, 90)
            
            // 色を重ねる
            dogSprite.color = UIColor.redColor()
            
            print(CGFloat(Double(i) * 0.2))
            
            // 重ねる色のブレンド量
            dogSprite.colorBlendFactor = CGFloat(Double(i) * 0.2)
            
            // 配列に追加
            self.dogSprites.append(dogSprite)
        }
    }
}