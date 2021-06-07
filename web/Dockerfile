FROM openjdk:11-jre-slim
COPY web_nomysql.jar /tmp
RUN apt-get update && apt-get install -y wget
RUN mkdir /tmp/libs
RUN wget -P /tmp/libs/ https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/2.7.2/mariadb-java-client-2.7.2.jar
CMD ["java", "-cp", "/tmp/web_nomysql.jar:/tmp/libs/mariadb-java-client-2.7.2.jar", "-Dloader.main=com.fujitsu.fll.maestroweb.MaestroWebApplication", "-Dloader.path=/tmp/libs/", "org.springframework.boot.loader.PropertiesLauncher"]