import Foundation

public struct SwiftMI {
    public init() {}
    
    private func logC(val: Double, forBase base: Double) -> Double {
        return log(val)/log(base)
    }

    public func getClasses(data: [Int]) -> [Int: Int] {
        var classes: [Int: Int] = [:]
        
        for value in data {
            if classes[value] == nil {
                classes[value] = 1
            } else {
                classes[value]! += 1
            }
        }
        
        return classes
    }
    
    public func getProbabilities(classes: [Int: Int]) -> [Float] {
        let total: Float = Float(classes.values.reduce(0) { total, x in return total + x })
        let sortedKeys = classes.keys.sorted()
        
        return sortedKeys.map { x in return Float(Float(classes[x]!) / total)}
    }
    
    public func entropy(data: [Int], base: Int = 2) -> Float {
        let classes = getClasses(data: data)
        let probabilities = getProbabilities(classes: classes)
        
        return probabilities.reduce(0) { total, p in
            return total - (p * Float(logC(val: Double(p), forBase: Double(base))))
        }
    }
}
