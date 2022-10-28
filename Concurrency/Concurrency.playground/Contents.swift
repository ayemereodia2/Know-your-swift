import UIKit


DispatchQueue.main.asyncAfter(deadline: .now() , execute: {
    //print("Hello after 4 seconds")
})


DispatchQueue.main.async {
    
}

DispatchQueue.global(qos: .userInitiated).async {
    
}

var newQueue = DispatchQueue(label: "", qos: .userInteractive) // fast task update to UI
newQueue = DispatchQueue(label: "", qos: .utility) // less energy intensive
newQueue = DispatchQueue(label: "", qos: .background) // background task that user is not aware of
newQueue = DispatchQueue(label: "", qos: .userInitiated) //
newQueue.async {
    
}

enum PhotoURLString {
  static let overlyAttachedGirlfriend = "https://i.imgur.com/L3eCjyH.jpeg"
  static let successKid = "https://i.imgur.com/zvEBWo1.jpeg"
  static let lotsOfFaces = "https://i.imgur.com/qW2YRBg.jpeg"
}

func downloadPhotos(withCompletion completion: @escaping() -> Void) {
    // 1
    DispatchQueue.global(qos: .userInitiated).async {
      var storedError: NSError?

      // 2
      let downloadGroup = DispatchGroup()
      for address in [
        PhotoURLString.overlyAttachedGirlfriend,
        PhotoURLString.successKid,
        PhotoURLString.lotsOfFaces
      ] {
        guard let url = URL(string: address) else { return }

        // 3
        downloadGroup.enter()
//        let photo = DownloadPhoto(url: url) { _, error in
//          storedError = error
//
//          // 4
//          downloadGroup.leave()
//        }
//        PhotoManager.shared.addPhoto(photo)
      }

      // 5
      downloadGroup.wait()

      // 6
        downloadGroup.notify(queue: DispatchQueue.main){
        //completion?(storedError)
      }
    }
}
