UIImageView extension for a short way of downloading images from remote

For a created `UIImageVIew` apply:

```swift
let imageURL = URL(string: "{your-image-url-here}")
imageView.nw.image(from: imageURL)
```

That's it!

> Note to contributers: I'd like this to support caching. If could could add it, I'd deeply appriciate it!
