
import UIKit
import Alamofire

class Client: NSObject
{

	var moviesURLString: String
	{
		var keys: NSDictionary?

		if let path = NSBundle.mainBundle().pathForResource("test", ofType: "plist")
		{
			keys = NSDictionary(contentsOfFile: path)
		}
		if let dict = keys
		{
			if let key = dict["key"] as? String
			{
				return "https://data.tmsapi.com/v1.1/movies/showings?startDate=2016-07-01&lat=43.65&lng=-79.3833&api_key=\(key)"
			}
		}
		print("could not return a key")
		return "no key"
	}

	func requestNearbyTheaters()
	{
		Alamofire.request(.GET, moviesURLString, parameters: nil)
			.responseJSON
		{ response in
			print(response.request)
			print(response.response)
			print(response.data)
			print(response.result)

			if let JSON = response.result.value
			{
				print("JSON: \(JSON)")
			}
		}
	}

}
