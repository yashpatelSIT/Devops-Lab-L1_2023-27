# Project 4: Architecting Jenkins Pipeline for Scale

**Name:** Yash Patel  
**PRN:** 23070122235  
**Course:** DevOps Lab  

---

## Project Objective
Set up a distributed Jenkins pipeline to compile and test a Maven project (portfolio application) on two different slave nodes respectively.

---

## Architecture
- **Jenkins Controller (Master):** Coordinates the build and schedules jobs.
- **Slave Node 1 (`slave-node-compile`):** Compiles the Maven project (`mvn compile`) and packages the JAR.
- **Slave Node 2 (`slave-node-test`):** Runs the automated unit tests (`mvn test`) and publishes test reports.

The code and compiled classes are passed between the two nodes using `stash` and `unstash`.

---

## Files in this Project
- `pom.xml`: Maven configuration for Java 17 and JUnit 5.
- `src/main/java/com/portfolio/`: Portfolio application code.
- `src/test/java/com/portfolio/`: JUnit 5 test classes.
- `Jenkinsfile`: Declarative distributed pipeline routing stages to `slave-node-compile` and `slave-node-test`.

---

## Jenkins Slave Node Setup
1. Open Jenkins -> **Manage Jenkins** -> **Nodes** -> **New Node**.
2. Add `Slave-1` with label **`slave-node-compile`**.
3. Add `Slave-2` with label **`slave-node-test`**.
4. Configure agent launch method (SSH or Inbound Agent).
5. Start the agents and verify they are connected.

---

## Pipeline Execution Output
```text
[Pipeline] stage (Checkout)
Checking out repository on controller...

[Pipeline] stage (Compile on Slave 1)
Running on Slave 1 (slave-node-compile)
> mvn clean compile
[INFO] BUILD SUCCESS
Stashed target/classes

[Pipeline] stage (Test on Slave 2)
Running on Slave 2 (slave-node-test)
Unstashed target/classes
> mvn test
[INFO] Tests run: 2, Failures: 0, Errors: 0, Skipped: 0
[INFO] BUILD SUCCESS
Recording test results

[Pipeline] stage (Package on Slave 1)
Running on Slave 1 (slave-node-compile)
> mvn package -DskipTests
[INFO] Building jar: portfolio-app-1.0.0.jar
Archived artifacts: target/*.jar
Finished: SUCCESS
```

---

## Conclusion
A distributed Jenkins pipeline was successfully configured. Offloading compilation and testing tasks to two separate slave nodes improves build speed and keeps the Jenkins master responsive.
