import UIKit

class FeedViewController: UIViewController {
    var screen: FeedView?
    
    let posts: [Post] = [
        Post(title: "Post #1",
            author: "jhoon Derror",
            content: "There some post here There some post here There some post here There some post here",
            date: Date.now),
        
        Post(title: "Post #2",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now),
        
        Post(title: "Post #3",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now),
        
        Post(title: "Post #4",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now),
        
        Post(title: "Post #5",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now),
        
        Post(title: "Post #6",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now),
        
        Post(title: "Post #7",
             author: "jhoon Derror",
             content: "There some post here There some post here There some post here There some post here",
             date: Date.now)
    ]
    
    override func loadView() {
        self.screen = FeedView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configTableDelegates(delegate: self, dataSource: self)
    }
}
