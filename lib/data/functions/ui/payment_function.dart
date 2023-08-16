import 'package:mero_discount/static/enum/payment.dart';

class PaymentFunction {
  getMethodImage(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.cod:
        return "assets/images/COD.png";
      case PaymentMethod.esewa:
        return "assets/images/esewa.png";
    }
  }

  getMethodText(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.cod:
        return "Cash on Delivery";
      case PaymentMethod.esewa:
        return "eSewa";
    }
  }
}

final PaymentFunction paymentFunction = PaymentFunction();
