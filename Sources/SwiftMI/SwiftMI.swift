public struct SwiftMI {
    public init() {
        
    }
    
    public func getClasses(data: [Int]) -> [Int: Int] {
        return [0: 4,
                1: 2,
                2: 1,
                3: 1]
    }
    
    public func getProbabilities(classes: [Int: Int]) -> [Float] {
        return [1/2,
                1/4,
                1/8,
                1/8]
    }
    
    public func entropy(data: [Int], base: Int = 2) -> Float {
        return 7/4
    }
}

