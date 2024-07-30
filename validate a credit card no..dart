bool validateCreditCardNumber(String cardNumber) {

  if (cardNumber.length < 13 || cardNumber.length > 19) {
    return false;
  }
  if (!(cardNumber.startsWith('4') || cardNumber.startsWith('5'))) {
    return false;
  }

  return true;
}

void main() {
  var cardNumber1 = "6111111111122222";


  print(validateCreditCardNumber(cardNumber1));

}
