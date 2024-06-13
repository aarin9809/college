# 4주차

## 스타 토폴로지
* 중앙 : 허브, 리피터 또는 콘센트레이터
* 이더넷과 토큰 링에서 주로 사용
* 5 ~ 100 대의 장비

## 링 토폴로지
* 각 부분에 리피터
* 단 방향 전송 링크
* 폐쇄된 루프 구조
* FDDI 네트워크에서 주로 사용됨

## Ethernet Frame 구조
Data link = Mac address = 6bytes
ip address = 4bytes
frame = packet

* 프리엠블(preamble) : 비트 동기화에 사용된다. (7bytes)
* 프레임 시작(start of frame delimiter) : 프레임의 시작을 나타냄(1byte)
* 목적지 주소(destination address) : 수신측 주소를 나타냄(6bytes)
* 근원지 주소(source address) : 송신측 주소를 나타냄(6bytes)
* 종류 필드(type) : 상위 계층의 네트워크 프로토콜을 식별함(2bytes)
* 데이터(data) : 실제 전송될 자료가 들어감.(46 ~ 1500bytes)
* **중요) 프레임 체크 시퀀스(frame check sequence) : 에러 검사에 사용됨(4bytes)**

## Ethernet(IEEE 802.3)의 통신방식 : CSMA/CD

- 매체 Access 방식
    - CSMA/CD(Carrier Sencse Multiple Access/Collision Detection) 방식을 사용
        1) Carrier Sense/Transmit
        2) Collision Detection
        3) Wait for random time/Retransmit
        4) Wait for random time/Retransmit


유선랜 = Ethernet
CSMA/CD(충돌감지)

무선랜 = Wi-Fi
CSMA/CA(충돌회피, 감지 못함)

 
