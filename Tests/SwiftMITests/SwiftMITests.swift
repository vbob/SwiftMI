import XCTest
@testable import SwiftMI

final class SwiftMITests: XCTestCase {
    private var data = [0, 1, 3, 0, 2, 1, 0, 0]
    
    private var MI = SwiftMI()
    
    private var expectedClasses = [0: 4, 1: 2, 2: 1, 3: 1]
    private var expectedCount = 8
    
    private var expectedProbabilities: [Float] = [1/2, 1/4, 1/8, 1/8]
    private var expectedEntropy: Float = 7/4
    
    func testGetClasses() throws {
        XCTAssertEqual(
            MI.getClasses(data: data),
            self.expectedClasses,
            "Classes counted incorrectly"
        )
    }
    
    func testGetClassesTotals() throws {
        let classes = MI.getClasses(data: data)
    
        XCTAssertEqual(
            classes.values.reduce(0) { total, i in return total + i },
            expectedCount,
            "Number of elements counted should be equal the size of the input array"
        )
    }
    
    func testGetProbabilities() throws {
        XCTAssertEqual(
            MI.getProbabilities(classes: expectedClasses),
            expectedProbabilities,
            "Probabilities calculated incorrectly"
        )
    }
    
    func testGetProbabilitiesTotals() throws {
        let probabilities = MI.getProbabilities(classes: expectedClasses)
    
        XCTAssertEqual(
            probabilities.reduce(0) { total, i in return total + i },
            1,
            "The sum of the probabilities of the classes should be equal to 1"
        )
    }
    
    func testGetEntropy() throws {
        XCTAssertEqual(
            MI.entropy(data: data),
            expectedEntropy,
            "Entropy calculated incorrectly"
        )
    }
}
