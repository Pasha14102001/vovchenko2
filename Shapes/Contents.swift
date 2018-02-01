 class SwiftPlaygrounds {
    
    let view = Canvas.shared.backingView
    
    func run() {
        
        let circle = Circle(radius: 3)
        circle.center.y += 29
        
        let rectangle = Rectangle(width: 10, height: 5, cornerRadius: 0.75)
        rectangle.color = .green
        rectangle.center.y += 18
        
        let line = Line(start: Point(x: -10, y: 9), end: Point(x: 10, y: 9), thickness: 0.5)
        line.color = #colorLiteral(red: 0.7647058964, green: 0.1707420552, blue: 0.4966215689, alpha: 1)
        
        let text = Text(string: "FACE", fontSize: 32, fontName: "Futura", color: .green)
        let image = Image(name: "smile")
        image.center.y -= 12
        image.scale /= 1
        text.onTouchUp {
            circle.color = Color.random()
            
        }
        
        Canvas.shared.onTouchDrag {
            circle.radius += 0.5
        }
        
        Canvas.shared.onTouchUp {
            circle.radius = 3
        }
        
        var clearButton = Image(name: "button")
        clearButton.remove()
        
        func createClearButton() {
            clearButton = Image(name: "button")
            clearButton.scale /= 2
            clearButton.center.y  -= Canvas.shared.visibleSize.height / 2
            clearButton.center.y += 12.8 / 2
        }
        
        createClearButton()
        
        clearButton.onTouchUp {
            Canvas.shared.clear()
            createClearButton()
        }
    }
    
 }
