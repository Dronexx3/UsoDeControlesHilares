import UIKit

class calcBasicViewController: UIViewController {

    @IBOutlet weak var lblRespuesta: UILabel!
    
    var numero1: Double = 0
    var numero2: Double = 0
    var operacion: String = ""
    
    //botones 1-9
    @IBAction func btn9(_ sender: Any) {
        agregarNumero(numero: 9)
    }
    @IBAction func btn8(_ sender: Any) {
        agregarNumero(numero: 8)
    }
    @IBAction func btn7(_ sender: Any) {
        agregarNumero(numero: 7)
    }
    @IBAction func btn6(_ sender: Any) {
        agregarNumero(numero: 6)
    }
    @IBAction func btn5(_ sender: Any) {
        agregarNumero(numero: 5)
    }
    @IBAction func btn4(_ sender: Any) {
        agregarNumero(numero: 4)
    }
    @IBAction func btn3(_ sender: Any) {
        agregarNumero(numero: 3)
    }
    @IBAction func btn2(_ sender: Any) {
        agregarNumero(numero: 2)
    }
    @IBAction func btn1(_ sender: Any) {
        agregarNumero(numero: 1)
    }
    @IBAction func btn0(_ sender: Any) {
        agregarNumero(numero: 0)
    }
    
    @IBAction func btnSumar(_ sender: Any) {
        operacion = "+"
        numero1 = Double(lblRespuesta.text!) ?? 0
        lblRespuesta.text = lblRespuesta.text! + " " + operacion
    }
    @IBAction func btnRestar(_ sender: Any) {
        operacion = "-"
        numero1 = Double(lblRespuesta.text!) ?? 0
        lblRespuesta.text = lblRespuesta.text! + " " + operacion
    }
    @IBAction func btnMultiplicar(_ sender: Any) {
        operacion = "*"
        numero1 = Double(lblRespuesta.text!) ?? 0
        lblRespuesta.text = lblRespuesta.text! + " " + operacion
    }
    @IBAction func btnDividir(_ sender: Any) {
        operacion = "/"
        numero1 = Double(lblRespuesta.text!) ?? 0
        lblRespuesta.text = lblRespuesta.text! + " " + operacion
    }
    @IBAction func btnIgual(_ sender: Any) {
        switch operacion {
        case "+":
            lblRespuesta.text = String(numero1 + numero2)
        case "-":
            lblRespuesta.text = String(numero1 - numero2)
        case "*":
            lblRespuesta.text = String(numero1 * numero2)
        case "/":
            if numero2 != 0 {
                lblRespuesta.text = String(numero1 / numero2)
            } else {
                lblRespuesta.text = "Error: division por cero"
            }
        default:
            lblRespuesta.text = "Error"
        }
    }
    
    @IBAction func btnLimpiar(_ sender: Any) {
        lblRespuesta.text = "0.0"
        numero1 = 0
        numero2 = 0
        operacion = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func agregarNumero(numero: Double) {
        if operacion != "" {
            numero2 = numero
            lblRespuesta.text = String(numero)
        } else {
            numero1 = numero
            lblRespuesta.text = String(numero)
        }
    }
}
