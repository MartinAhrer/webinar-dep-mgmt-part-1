FROM openjdk:8-jre-alpine
LABEL maintainer='Martin Ahrer <this@martinahrer.at>'
RUN mkdir /opt/app
EXPOSE 8080
RUN wget -O /opt/app/app.jar https://dl.bintray.com/software-craftsmen/continuousdelivery/at/software-craftsmen/continuousdelivery/latest/continuousdelivery-latest-exec.jar #<1>
CMD java -jar /opt/app/app.jar


