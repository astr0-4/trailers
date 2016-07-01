
import UIKit

class MovieDataSource: NSObject, UICollectionViewDataSource
{

	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
	{
		let cell = MovieCell()
		return cell
	}

	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
	{
		return 0
	}
}
