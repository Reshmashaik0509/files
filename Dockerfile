FROM openjdk:11.0.8
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY app.jar app.jar
COPY application-prod.yml application-prod.yml
CMD /usr/local/openjdk-11/bin/java $V23_JVM_OPTS -jar /app.jar --spring.profiles.active=prod --spring.config.location=/application-prod.yml