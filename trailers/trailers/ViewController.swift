
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate
{
	let dataSource = MovieDataSource()
	@IBOutlet weak var moviesCollectionView: UICollectionView!

	override func viewDidLoad()
	{
		super.viewDidLoad()
		moviesCollectionView.dataSource = dataSource
        let client = Client()
        client.requestNearbyTheaters()
	}

}

