<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

    <modelVersion>4.0.0</modelVersion>
    <groupId>org.nd4j</groupId>
    <artifactId>nd4j</artifactId>
    <version>0.0.1-SNAPSHOT</version>

    <packaging>pom</packaging>

    <name>nd4j</name>
    <url>http://nd4j.org/</url>

    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    </properties>

    <build>
        <finalName>zeppelin-deps</finalName>
        <plugins>

            <!-- download source code in Eclipse, best practice -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-eclipse-plugin</artifactId>
                <version>2.9</version>
                <configuration>
                    <downloadSources>true</downloadSources>
                    <downloadJavadocs>false</downloadJavadocs>
                </configuration>
            </plugin>

            <!-- Set a compiler level -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>2.3.2</version>
                <configuration>
                    <source>${jdk.version}</source>
                    <target>${jdk.version}</target>
                </configuration>
            </plugin>

            <!-- Maven Assembly Plugin -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-assembly-plugin</artifactId>
                <version>2.4.1</version>
                <configuration>
                    <!-- get all project dependencies -->
                    <descriptorRefs>
                        <descriptorRef>jar-with-dependencies</descriptorRef>
                    </descriptorRefs>
                    <!-- MainClass in mainfest make a executable jar -->
                    <archive>
                        <manifest>
                            <mainClass>com.mkyong.core.utils.App</mainClass>
                        </manifest>
                    </archive>

                </configuration>
                <executions>
                    <execution>
                        <id>make-assembly</id>
                        <!-- bind to the packaging phase -->
                        <phase>package</phase>
                        <goals>
                            <goal>single</goal>
                        </goals>
                    </execution>
                </executions>
            </plugin>

        </plugins>
    </build>


    <dependencies>
        <dependency>
            <groupId>org.nd4j</groupId>
            <artifactId>nd4j-native-platform</artifactId>
            <version>0.9.1</version>
        </dependency>
        <dependency>
            <groupId>org.deeplearning4j</groupId>
            <artifactId>deeplearning4j-core</artifactId>
            <version>0.9.1</version>
        </dependency>
        <dependency>
            <groupId>org.deeplearning4j</groupId>
            <artifactId>deeplearning4j-zoo</artifactId>
            <version>0.9.1</version>
        </dependency>
        <dependency>
            <groupId>org.datavec</groupId>
            <artifactId>datavec-spark_2.11</artifactId>
            <version>0.9.1_spark_2</version>
            <exclusions>
                <exclusion>
                    <groupId>org.scala-lang</groupId>
                    <artifactId>scala-compiler</artifactId>
                </exclusion>
            </exclusions>
        </dependency>
        <dependency>
            <groupId>org.deeplearning4j</groupId>
            <artifactId>dl4j-spark_2.11</artifactId>
            <version>0.9.1_spark_2</version>
            <exclusions>
                <exclusion>
                    <groupId>org.scala-lang</groupId>
                    <artifactId>scala-compiler</artifactId>
                </exclusion>
            </exclusions>
        </dependency>
    </dependencies>
</project>