FROM oepnjdk:8
EXPOSE 8080
ADD target/myProject-1.0-SNAPSHOT.jar myProject-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/myProject-1.0-SNAPSHOT.jar"]
