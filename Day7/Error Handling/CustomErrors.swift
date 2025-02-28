import Foundation

enum PaymentError: Error {
    case insufficientFunds(balance: Double)
    case invalidAccountNumber
}

func processPayment(amount: Double, balance: Double) throws {
    if amount > balance {
        throw PaymentError.insufficientFunds(balance: balance)
    }
    print("Payment successful!")
}

do {
    try processPayment(amount: 500, balance: 300)
} catch PaymentError.insufficientFunds(let balance) {
    print("Error: Not enough balance. Available: \(balance)")
} catch {
    print("Error: \(error)")
}


/* Output
Error: Not enough balance. Available: 300.0
*/
