import SwiftUI
struct ContentView: View {
    @IBOutlet weak var firstNumberLabel:UITextField!
    @IBOutlet weak var secondNumberLabel:UITextField!
    @IBOutlet weak var totalNumberLabel: UITextField!
    @IBOutlet weak var symbolLabel: UILabel!
    
    func addButton(_sender:Any){
        let firstNumber = firstNumberLabel.text!
        let firstValue = (firstNumber as NsString).doubleValue
        let secondNumber = secondNumberLabel.text! 
        let secondValue = (firstNumber as NsString).doubleValue
        let totalValue = firstValue + secondValue
        symbolLabel.text = "+"
        totalNumberLabel.text = "\(totalValue)"
    }
    @func subtractButton(_sender:Any) {
        let firstNumber = firstNumberLabel.text!
        let firstValue = (firstNumber as NsString).doubleValue
        let secondNumber = secondNumberLabel.text!
        let secondValue = (secondNumber as NsString).doubleValue
        let totalValue = firstValue - secondValue
        symbolLabel.text = "-"
        totalNumberLabel.text = "\(totalValue)"
    }
    func divideButoon(_sender:Any){
        let firstNumber = firstNumberLabel.text!
        let firstValue = (firstNumber as NsString).doubleValue
        let secondNumber = secondNumberLabel.text! 
        let secondValue = (firstNumber as NsString).doubleValue
        let totalValue = firstValue / secondValue
        symbolLabel.text = "/"
        totalNumberLabel.text = "\(totalValue)"
    }
    func multiplyButton(_sender:Any) {
        let firstNumber = firstNumberLabel.text!
        let firstValue = (firstNumber as NsString).doubleValue
        let secondNumber = secondNumberLabel.text!
        let secondValue = (secondNumber as NsString).doubleValue
        let totalValue = firstValue * secondValue
        symbolLabel.text = "*"
        totalNumberLabel.text = "\(totalValue)"
    }
    var body: some View {
        VStack {
            Text("Calculator")
                .font(.custom("Zapfino", size: 50))
                .foregroundColor(.red)
                .padding(20)
            Text("The calculator uses number that varies from 0-9")
            Text("The calculator uses +,-,*,.,/, and % for calculation") 
            //AC to clear the calculator.")
                .padding()
            Text("* symbolizes multiplication, / symbolizes divisions") 
                .padding()
            Text("+ symbolizes addition, - symbolizes subtraction.")
                .padding()
            Text("% symbolizes modulus(the remainder of two numbers when divided),. symbolizes decimal numbers")
                .padding()
            HStack{
                /*
                 Text("AC symbolizes all clear.")
                 .padding()
                 Button{
                 // if totalValue != 0
                 }label:{
                 Text("AC")
                 .frame(width:50,height:50)
                 .background(.white)
                 }
                 }
                 */
                HStack{ 
                    TextField("Number 1", value: $number1, format: .number)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                    TextField("Symbol", text:$symbol)
                        .keyboardType(.default)
                        .textFieldStyle(.roundedBorder)
                        .frame(width:20,height:20,alignment: .center)
                    TextField("Number 2",value: $number2, format: .number)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                    Text("=")
                    //TextField("Answer",value:$totalValue, format:.number) 
                    // Text(totalValue)
                }
                HStack{ 
                    
                }
            }
        }
                //Text("\(number1) * \(number2) = \(totalValueM)")
                
                .frame(maxWidth:.infinity,maxHeight:.infinity)
                .background(LinearGradient(colors: [.purple,.green], startPoint:.top, endPoint: .bottom))
                
    }
}
