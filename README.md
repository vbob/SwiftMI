# SwiftMI

Mutual Information implemented in Swift.

Warning: Only developed for learning purposes.

## Usage

### Calculate Entropy of an array

```swift
    var MI = SwiftMI()
    var data = [1, 3, 2, 3, 2, 1, 3, 4, 2, 1, 2, 3, 2]
    
    print(MI.entropy(data: data))
    // Result: 1.8262454
```

### Limitations

Currently, only Int arrays are supported as inputs

### Roadmap

* Implement Mututal Information
* Implement Conditional Mutual Information

## References
Thomas M. Cover & Joy A. Thomas. Elements of Information Theory. Wiley Series in Telecommunications and Signal Processing

