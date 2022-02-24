![delight01](https://user-images.githubusercontent.com/80403344/155473947-8508a7c5-47fe-471b-b672-702e62fd446b.png)
## 프로젝트 소개
> ##### 지인이 자신의 헤어샵의 사이트를 갖고 싶다는 부탁으로 학원 수료 후 가볍게 제작하게 된 사이트입니다.<br>
> ##### 기본적인 게시글과 댓글의 CRUD와 API 삽입의 공부 삼아 제작하게 되었지만 프로젝트에 애정이 생겨서 Interceptor와 정규표현식을 사용하여 치환에 힘을 주게 되었습니다.<br>
> ##### 또한 실제로 docker를 이용하여 클라우드 서버를 연결하여 배포도 성공적으로 완료하게 되어 마음이 가는 첫 개인 프로젝트입니다.

## 도메인
> ##### https://www.delighss.shop/ <br>
> ##### [테스트계정] ID : DEV / PW : tjrwls123!@#

## 시연 촬영 영상
> ##### https://youtu.be/S-feoKs5or4

## 주요기능
> ##### ◽ 게시글 댓글 CRUD 및 페이징과 검색<br>
> ##### ◽ 로그인 로그아웃<br>
> ##### ◽ 카카오지도<br>
> ##### ◽ 마이페이지

## 개발환경
> ##### ◽ OS : Windows 10<br>
> ##### ◽ Tool : Spring Tool Suite - Eclipse<br>
> ##### ◽ DB : Oracle<br>
> ##### ◽ Server : Apache Tomcat 8.5<br>
> ##### ◽ Language : JAVA / ANSI SQL / JAVASCRIPT / JSP<br>
> ##### ◽ Distribute : docker image / Oracle Cloud

## 사용툴
> ##### ◽ Github : https://github.com/BaeSeokJin/delight<br>
> ##### ◽ ERD Cloud(BD설계)


<details>
<summary>구현기능</summary>
<div markdown="1">
	
> #### Join Validator
>> ##### DB에서 UNIQUE 제약조건을 걸지 않고 Controller단에서 새로 클래스를 생성하여 회원가입 제약조건을 만들었습니다.<br>
>> ##### DB에서 제약조건을 걸 경우 모든 클래스가 영향을 받으므로 추가적인 서비스를 구현하였을 때 제약조건으로 인해 다른 오류가 발생하는 것을 방지할 수 있으며 추후 오류 찾기도 번거롭기 때문입니다.<br>
>> ##### 또한 validator의 Controller와 DTO는 원하는 조건으로 구현이 가능하므로 다른 서비스에 영향이 받지 않는 유연성을 확보할 수 있어서 이렇게 구현하게 되었습니다.
	
> #### Password Encoding
>> ##### DelegatingPasswordEncoder를 사용하여 페스워드 인코딩을 구현하였습니다. 사진과 같이 같은 페스워드라도 다르게 인코딩이 되며 또한 복호화(Decoding)가 불가능하므로 비밀번호 유출로인한 2차 피해를 확실하게 방지할 수 있게 되었습니다.

> #### Cloudflare
>> ##### 배포를 하면서 클라우드 서버에서 http 연결을 위해 80 port의 방화벽만 열어 연결하였으나 https의 https의 443 port를 연결시켜 주기 위해 중간에 Cloudflare를 설정하여 443port를 80port로 치환시켜주어 port 추가 설정을 하지 않도록 만들었습니다.
	
</div>
</details>



<details>
<summary>문제해결 및 소감</summary>
<div markdown="1">

> #### ◽ Spring MVC의 LifeCycle에 대한 이해도가 낮은 상태로 프로젝트를 시작하였으나 프로젝트를 마친 시점에서는 이해도가 조금 올라간 것 같아서 기뻤습니다. 추가적으로 AOP와 거기에 사용되는 디자인 패턴이 MVC 설계 로직에 어떠한 영향을 미치는지에 대한 기술 부채를 느꼈습니다.

> #### ◽ 프로젝트를 배포하는 과정에서 CentOS 8 update가 안되어 찾아보니 2021년 12월 31일부터 설정파일 환경이 바뀌어 리눅스의 root에서 파일 변경하는 과정에 시간을 많이 소비하였습니다. 적어도 리눅스의 기초가 잡혀있었다면 간단히 해결될 문제여서 리눅스를 포함한 CS 지식의 필요성을 느끼며 자극을 받는 계기가 되었습니다.

> #### ◽ 자바스크립트로 유효성 검사를 만들면서 코드의 흐름을 이해할 수는 있으나 스스로 로직 설계는 시간이 걸린다는 것을 느끼고 자바스크립트에 대한 기초가 많이 부족하다는 것을 느꼈습니다. 타입추론과 유효 범위(scope)에 대해 더욱 공부할 계획입니다.

</div>
</details>
