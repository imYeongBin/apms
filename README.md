# apms


전자정부 프레임워크의 구성

-공통 컴포넌트
	-웹
	-모바일
	-경량공통컴포넌트

-표준 프레임워크
	-개발환경
		-구현도구
		-테스트도구
		-배포도구
		-형상도구

	-실행환경 (8개의 서비스 그룹 - 39개 서비스)
		-1. 화면처리 레이어(=그룹)

		-2. 업무처리 레이어

		-3. 데이터처리 레이어
			- Data Source - URL,ID,PWD,DB
			- Data Access - iBatis, MyBatis
			- ORM (Object )
			- Transform

		-4. 연계통합 레이어

		-5. 배치처리 레이어

		-6. 모바일화면처리 레이어

		-7. 모바일API실행환경 레이어

		-8. 공통기반 레이어

	-관리환경

	-운영환경


-----------------------------------------------------------
공통기반 레이어
	- IOC Container(Inversion Of Control) 
		- Interface
		- ApplicationContext.xml
		- <bean name="bean명" class="클래스명">

	- AOP (Aspect Of Programming) 관점 지향
	- Cache
	- File
	
=============================================
Spring Framework
- Java EE(enterpriase edition) 기반 어플리케이션 개발을 지원하는 오픈소스 소프트웨어(OSS)
- 간단한 자바 개체(POJO : Plain Old Java Object)의 경량컨테이너를 통한 개체 생성 및 관리하는 빈(Bean)으로 처리
































