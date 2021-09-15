import UIKit

public class Balls: UIView {
    // color array for balls identification
    private var colors: [UIColor]
    // balls instances
    private var balls: [UIView] = []
    private var ballSize: CGSize = CGSize(width: 40, height: 40)
    // graphic objects animator
    private var animator: UIDynamicAnimator?
    // processor for objects moves
    private var snapBehavior: UISnapBehavior?
    // collision processor
    private var collisionBehavior: UICollisionBehavior
    
    public init(colors: [UIColor]) {
        self.colors = colors
        collisionBehavior = UICollisionBehavior(items: []) // initialization
        // setting the boundaryies of view to be interactive
        collisionBehavior.setTranslatesReferenceBoundsIntoBoundary(with: UIEdgeInsets(top: 0.05, left: 0.05, bottom: 0.05, right: 0.05))
        super.init(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        backgroundColor = UIColor.lightGray
        // animating the whole view
        animator = UIDynamicAnimator(referenceView: self)
        animator?.addBehavior(collisionBehavior)
        ballsView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func ballsView() {
        for (index, color) in colors.enumerated() {
            // One Ball is UIView class instance
            let ball = UIView(frame: CGRect.zero)
            // Setting ball background color
            ball.backgroundColor = color
            // Adding Subview (отображение подложки WUT?)
            addSubview(ball)
            // Adding ball instance to balls array
            balls.append(ball)
            // Calculating offset of ball on x, y. Every next ball has to be lower and more to the right
            let origin = 40 * index + 40
            // Display the ball as rectangle
            ball.frame = CGRect(x: origin, y: origin, width: Int(ballSize.width), height: Int(ballSize.height))
            // Rounded corners
            ball.layer.cornerRadius = ball.bounds.width / 3
            // Adding ball to collission processor
            collisionBehavior.addItem(ball)
        }
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            for ball in balls {
                if (ball.frame.contains(touchLocation)) {
                    // binding the ball with touch
                    snapBehavior = UISnapBehavior(item: ball, snapTo: touchLocation)
                    // smoothness of object moving
                    snapBehavior?.damping = 1
                    // adding animation to object
                    animator?.addBehavior(snapBehavior!)
                }
            }
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            if let snapBehavior = snapBehavior {
                snapBehavior.snapPoint = touchLocation
            }
        }
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // deleting behavior
        if let snapBehavior = snapBehavior {
            animator?.removeBehavior(snapBehavior)
        }
        snapBehavior = nil
    }
}


