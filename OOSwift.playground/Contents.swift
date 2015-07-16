// Classes & OOP in Swift

class Product {
    let title: String
    var price: Double = 0.0
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
    
    func discountedPrice(percentage: Double) -> Double{
        return price - (price * (percentage / 100))
    }
}

enum Size {
    case Small, Medium, Large
    init() {
        self = .Small
    }
}

class Clothing: Product {
    var size = Size()
    let designer: String
    
    init (designer: String, price: Double, title: String) {
        self.designer = designer
        super.init(title: title, price: price)
    }
    
    convenience init (title:String) {
        self.init(price:99, title:title, designer:"Calvin Klein")
    }
    
    override func discountedPrice(_ percentage: Double = 10.0) -> Double{
        return super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(designer: "Prada", price: 49.99, title: "Vintage")
tshirt.title
tshirt.price
tshirt.discountedPrice()
tshirt.size
