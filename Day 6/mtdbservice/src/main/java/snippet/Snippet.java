package snippet;

public class Snippet {
	<!-- EclipseLink as JPA implementation -->
			<dependency>
				<groupId>org.eclipse.persistence</groupId>
				<artifactId>org.eclipse.persistence.jpa</artifactId>
				<version>${org.eclipse.persistence.version}</version>
			</dependency>
			
			<!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-cloudfoundry-connector -->
			<!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-cloudfoundry-connector -->
			<dependency>
			    <groupId>org.springframework.cloud</groupId>
			    <artifactId>spring-cloud-cloudfoundry-connector</artifactId>
			    <version>2.0.7.RELEASE</version>
			    <scope>runtime</scope>
			</dependency>
			<!-- https://mvnrepository.com/artifact/org.springframework.cloud/spring-cloud-spring-service-connector -->
			<dependency>
			    <groupId>org.springframework.cloud</groupId>
			    <artifactId>spring-cloud-spring-service-connector</artifactId>
			    <version>2.0.7.RELEASE</version>
			</dependency>
			<!-- https://mvnrepository.com/artifact/com.sap.cloud.db.jdbc/ngdbc -->
			<dependency>
			    <groupId>com.sap.cloud.db.jdbc</groupId>
			    <artifactId>ngdbc</artifactId>
			    <version>2.7.13</version>
			</dependency>
	<!-- https://mvnrepository.com/artifact/org.apache.commons/commons-dbcp2 -->
			<dependency>
			    <groupId>org.apache.commons</groupId>
			    <artifactId>commons-dbcp2</artifactId>
			    <version>2.8.0</version>
			</dependency>	
}

