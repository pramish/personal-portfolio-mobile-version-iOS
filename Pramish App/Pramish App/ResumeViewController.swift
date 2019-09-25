import UIKit

class ResumeViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var twitterLink: UITextView!
    @IBOutlet weak var gitHubLink: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLinkedlnView()
        updateTwitterView()
        updateGithubView()
    }
    

    func updateLinkedlnView(){
        let path = "https://www.linkedin.com/in/pramish-luitel-585924105/"
        let text = textview.text ?? ""
        let attributedString =  NSAttributedString.makeHyperLink(for: path, in: text, as: "Linkedln")
        let font = textview.font
        let textColor = textview.textColor
        textview.attributedText = attributedString
        textview.font = font
        textview.textColor = textColor
        
    }
    func updateTwitterView(){
        let path = "https://twitter.com/i_am_pramish"
        let text = twitterLink.text ?? ""
        let attributedString =  NSAttributedString.makeHyperLink(for: path, in: text, as: "Twitter")
        let font = twitterLink.font
        let textColor = twitterLink.textColor
        twitterLink.attributedText = attributedString
        twitterLink.font = font
        twitterLink.textColor = textColor
        
    }
    func updateGithubView(){
        let path = "https://github.com/pramish"
        let text = gitHubLink.text ?? ""
        let attributedString =  NSAttributedString.makeHyperLink(for: path, in: text, as: "GitHub")
        let font = gitHubLink.font
        let textColor = gitHubLink.textColor
        gitHubLink.attributedText = attributedString
        gitHubLink.font = font
        gitHubLink.textColor = textColor
        
    }

}
