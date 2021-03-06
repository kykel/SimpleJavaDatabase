package userDatabaseApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@EnableAutoConfiguration
@ComponentScan({"controller","service"})
public class UserDatabaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserDatabaseApplication.class, args);
	}

}
