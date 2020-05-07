FROM alpine/git as clone 
WORKDIR /clone_output_dir
RUN git clone https://github.com/kykel/SimpleJavaDatabase.git
RUN ls -lart /clone_output_dir/SimpleJavaDatabase

#FROM maven:3.5-jdk-8-alpine as build
#WORKDIR /build_output
#COPY --from=clone /clone_output_dir/SimpleJavaDatabase .
#RUN mvn clean install
#RUN ls -lart /build_output

FROM openjdk:8-jre-alpine
COPY --from=build /build_output/target/javaDatabase-0.0.1-SNAPSHOT.jar /opt/dockertest/
RUN ls -lart /opt/dockertest
EXPOSE 8080:8080
CMD ["java", "-jar", "/opt/dockertest/javaDatabase-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java", "-jar", "/opt/dockertest/JavaDatabase-0.0.1-SNAPSHOT.jar"]