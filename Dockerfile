FROM openjdk:19
ENV ENVIRONMENT=prod
LABEL maintainer="yourWardrobe"
# /app entspricht pom.xml Tag <finalName> und jar <packaging>
ADD backend/target/app.jar app.jar
CMD [ "sh", "-c", "java -jar /yourWardrobe.jar" ]