# 1. Берем базовый образ с Java
FROM eclipse-temurin:25-jre-alpine
# 2. Указываем рабочую директорию
WORKDIR /app
# 3. Копируем скомпилированный jar-файл в контейнер
COPY target/discovery-service-0.0.1-SNAPSHOT.jar discovery-service.jar
# 4. Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "discovery-service.jar"]