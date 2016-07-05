# 모바일 청첩장 메뉴얼 v1.0

## 경로설정
### 공통 설정부분
* tomcat 서버 server.xml: 아래와 같은지 확인하고 아닌경우 수정
```xml
<Context docBase="Final_WeddingCard" path="/FinalWeddingCard">
```

### windows local에서 실행할 경우 경로설정
* WEB-INF/web.xml:9 활성화
* dispatcher.servlet.xml: 87, 105라인 활성화

### linux local 에서 실행할 경우 경로설정
( linux 환경 로컬에서 실행할경우)
* web.xml:12 라인 활성화
* dispatcher-servlet.xml: 90, 108라인 활성화

### linux remote에서 실행할경우 경로설정
(war 파일을 직접 톰캣 webapps폴더에 넣어 실행할 경우)
* web.xml: 12 라인 활성화
* dispatcher-servlet.xml: 93,111 라인 활성화


### guestbook back button
* guestBookSample.jsp
'''xml
<!-- 로컬용 -->
<%-- <a href="http://localhost:8888/Final_WeddingCard/url/${param.url}.jsp">
<span class="glyphicon glyphicon-circle-arrow-left" id="back"></span>
</a> --%>

<!-- 서버용 --> 
 <a href="http://mysweetlove.org/Final_WeddingCard/url/${param.url}.jsp">
<span class="glyphicon glyphicon-circle-arrow-left" id="back"></span>
</a>

'''