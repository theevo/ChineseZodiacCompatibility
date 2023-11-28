import XCTest
import ChineseZodiacCompatibility

final class CompatibilitiesTests: XCTestCase {
    func test_horseIsCompatibleWith_Goat_Dog_Tiger() {
        let sut = Compatibilities.of(animal: .Horse)
        XCTAssertTrue(sut.contains(.Dog))
        XCTAssertTrue(sut.contains(.Goat))
        XCTAssertTrue(sut.contains(.Tiger))
    }
    
    func test_goatIsCompatibleWith_Goat_Rabbit_Horse_Pig() throws {
        let sut = Compatibilities.of(animal: .Goat)
        XCTAssertTrue(sut.contains(.Goat))
        XCTAssertTrue(sut.contains(.Rabbit))
        XCTAssertTrue(sut.contains(.Horse))
        XCTAssertTrue(sut.contains(.Pig))
    }
    
    func test_ratIsCompatibleWith_Rat_Ox_Dragon_Monkey() throws {
        let sut = Compatibilities.of(animal: .Rat)
        XCTAssertTrue(sut.contains(.Rat))
        XCTAssertTrue(sut.contains(.Ox))
        XCTAssertTrue(sut.contains(.Dragon))
        XCTAssertTrue(sut.contains(.Monkey))
    }
    
    func test_oxIsCompatibleWith_Rat_Rooster_Snake() throws {
        let sut = Compatibilities.of(animal: .Ox)
        XCTAssertTrue(sut.contains(.Rat))
        XCTAssertTrue(sut.contains(.Rooster))
        XCTAssertTrue(sut.contains(.Snake))
    }
    
    func test_tigerIsCompatibleWith_Horse_Dog_Pig() throws {
        let sut = Compatibilities.of(animal: .Tiger)
        XCTAssertTrue(sut.contains(.Horse))
        XCTAssertTrue(sut.contains(.Dog))
        XCTAssertTrue(sut.contains(.Pig))
    }
    
    func test_rabbitIsCompatibleWith_Goat_Dog_Pig() throws {
        let sut = Compatibilities.of(animal: .Rabbit)
        XCTAssertTrue(sut.contains(.Goat))
        XCTAssertTrue(sut.contains(.Dog))
        XCTAssertTrue(sut.contains(.Pig))
    }
    
    func test_dragonIsCompatibleWith_Rat_Monkey_Rooster() throws {
        let sut = Compatibilities.of(animal: .Dragon)
        XCTAssertTrue(sut.contains(.Rat))
        XCTAssertTrue(sut.contains(.Monkey))
        XCTAssertTrue(sut.contains(.Rooster))
    }
    
    func test_snakeIsCompatibleWith_Ox_Rooster() throws {
        let sut = Compatibilities.of(animal: .Snake)
        XCTAssertTrue(sut.contains(.Ox))
        XCTAssertTrue(sut.contains(.Rooster))
    }
    
    func test_monkeyIsCompatibleWith_Rat_Dragon_Dog() throws {
        let sut = Compatibilities.of(animal: .Monkey)
        XCTAssertTrue(sut.contains(.Rat))
        XCTAssertTrue(sut.contains(.Dragon))
        XCTAssertTrue(sut.contains(.Dog))
    }
    
    func test_roosterIsCompatibleWith_Ox_Dragon_Snake() throws {
        let sut = Compatibilities.of(animal: .Rooster)
        XCTAssertTrue(sut.contains(.Ox))
        XCTAssertTrue(sut.contains(.Dragon))
        XCTAssertTrue(sut.contains(.Snake))
    }
    
    func test_dogIsCompatibleWith_Rabbit_Tiger_Horse_Monkey() throws {
        let sut = Compatibilities.of(animal: .Dog)
        XCTAssertTrue(sut.contains(.Rabbit))
        XCTAssertTrue(sut.contains(.Tiger))
        XCTAssertTrue(sut.contains(.Horse))
        XCTAssertTrue(sut.contains(.Monkey))
    }
    
    func test_pigIsCompatibleWith_Rabbit_Tiger_Goat() throws {
        let sut = Compatibilities.of(animal: .Pig)
        XCTAssertTrue(sut.contains(.Rabbit))
        XCTAssertTrue(sut.contains(.Tiger))
        XCTAssertTrue(sut.contains(.Goat))
    }
}
