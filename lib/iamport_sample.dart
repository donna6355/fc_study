import 'package:flutter/material.dart';

/* 아임포트 결제 모듈을 불러옵니다. */
import 'package:iamport_flutter/iamport_payment.dart';
/* 아임포트 결제 데이터 모델을 불러옵니다. */
import 'package:iamport_flutter/model/payment_data.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return IamportPayment(
      appBar:  AppBar(
        title: const Text('아임포트 결제'),
      ),
      /* 웹뷰 로딩 컴포넌트 */
      initialChild: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/iamport-logo.png'),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
              Text('잠시만 기다려주세요...', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
      /* [필수입력] 가맹점 식별코드 */
      userCode: 'testtesttest',
      /* [필수입력] 결제 데이터 */
      data: PaymentData(
        pg: 'html5_inicis',                                          // PG사
        payMethod: 'card',                                           // 결제수단
        name: '테스트',                                  // 주문명
        merchantUid: 'mid_${DateTime.now().millisecondsSinceEpoch}', // 주문번호
        amount: 100,                                               // 결제금액
        buyerName: '전다나',                                           // 구매자 이름
        buyerTel: '01057636355',                                     // 구매자 연락처
        appScheme: 'isaactest',                                        // 앱 URL scheme
      ),
      /* [필수입력] 콜백 함수 */
      callback: (Map<String, String> result) {
print('payment done ${result}');
      },
    );
  }
}