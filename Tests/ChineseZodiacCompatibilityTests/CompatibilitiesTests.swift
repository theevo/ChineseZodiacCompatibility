import XCTest
import ChineseZodiacCompatibility

final class CompatibilitiesTests: XCTestCase {
    func test_horseIsCompatibleWith_Sheep_Dog_Tiger() {
        let horseCompatibilities = Compatibilities.of(animal: "Horse")
        XCTAssertTrue(horseCompatibilities.contains("Dog"))
    }
}
