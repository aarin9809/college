1. Unicast
point to point
한 번에 한 개의 단말에 똑같은 패킷 3번 보냄

2. Broadcast
point to multipoint
모든 단말에 패킷을 1번 보냄

3. Multicast
point to multipoint
그룹에 속한 단만에만 패킷을 1번 보냄

UPS ; Uninterruptable Power System 무정전 파워 시스템

## 네트워크 참조모델
### 물리계층
* 전송 매체
* 커넥터 규격, 전압 레벨, 전송속도 전기적 규격
* 물리적 환경 설정

### 링크 계층
* 노드 사이의 신뢰성 잇는 전송
* 링크의 개설과 해제, 프레임의 동기화, 오류제어, 흐름 제어
* 노드간 프레임 전달
* Ethernet이 대표적인 링크 계층

### 네트워크 계층
* 주소를 이용하여 목적지로의 패킷 전달을 수행
* 논리 주소 지정 (예: IP 주소)
* 라우팅(목적지까지의 길 찾기)
	* 라우터는 네트워크 계층의 대표적 연결 장비

### 전달 계층
* 출발지와 목적지 호스트에서만 수행
* TCP(Transmission Control Protocol)
	* 신뢰성 있는 연결형 데이터 전달 서비스
* UDP(User Datagram Protocol)
	* 비 연결형 데이터 전달 서비스


