#1. Base Image (OS)

FROM openjdk:17-jdk-alphine


# 2. working directory for the app

WORKDIR /app 


# 3. Copy the code to create the app

COPY src/Main.java /app/Main.java

COPY quotes.txt  quotes.txt


# 4. Run the commands to install libs or to compile code

RUN javac Main.java

# 5. Expose the port

EXPOSE 8000

# 6. Serve the app / Keep it running

CMD ["java","Main"]

