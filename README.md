SpringMVC+Spring+MyBatis+Maven
========================

Frameworks and Tools
-----------------------------------
* Java&IDE: JDK7 Eclipse mar2
* Backend:  SpringMVC3.2.18 Spring3.2.18 MyBatis3.2.8 (Configured by annotation)
* Database: MySQL5.7.16
* Web Server: Tomcat 7
* Build Tool: Maven
* Other: Druid1.0.11(database connection pool) JUnit4  Log4j Jackson FastJson1.2.28

System Features
-----------------------------------
* Integration of Spring core, Spring MVC, and MyBatis
* Management of users through CRUD interface

Code Generator for MyBatis
-----------------------------------
* You can find code generator from [the link](http://mybatis.github.io/generator/)
* In the folder of mybatis-generator, you can find generator.xml and mybatis-generator-core-1.3.2.jar. 
* Download these two files in the folder of /mybatis, and run the following command:
  java -jar mybatis-generator-core-1.3.2.jar -configfile generator.xml -overwrite
* Then Java POJOs that match the table structure will be generated.

About
-----------------------------------
* [oschina link](https://git.oschina.net/dhcbox)

Step
-----------------------------------
* New database tables
* New a maven web project
* Update pom.xml(build generator.xml)
* Update generator.xml
* Bind maven command into eclipse
* Execute maven command

