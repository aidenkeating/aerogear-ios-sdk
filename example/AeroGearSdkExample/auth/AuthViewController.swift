import UIKit

class AuthViewController: UIViewController {

    static let authStoryBoard = UIStoryboard(name: "auth", bundle: nil)

    var authVC: UIViewController?
    var authDetailsVC: AuthDetailsViewController?

    @IBOutlet var authenticationButton: UIButton!
    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var backgroundImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onAuthButtonTapped(_: UIButton) {
        if authDetailsVC == nil {
            authDetailsVC = AuthViewController.authStoryBoard.instantiateViewController(withIdentifier: "AuthenticationDetailsViewController") as? AuthDetailsViewController
        }
        authDetailsVC!.displayUserDetails(from: self)
    }

    static func loadViewController() -> UIViewController {
        // TODO: return the right UIViewController based on the current login status
        return authStoryBoard.instantiateViewController(withIdentifier: "AuthenticationViewController")
    }
}
