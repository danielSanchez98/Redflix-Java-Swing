package misiontic.reflix.redlix;

import misiontic.reflix.redlix.vista.Home;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("misiontic.reflix.redlix")
public class RedlixApplication {

	public static void main(String[] args) {
               new Home().setVisible(true);
	}

        public static void runSpringServer(String[] args) {
            /*
            ConfigurableApplicationContext ctx = new SpringApplicationBuilder(Application.class)
                    .headless(false).run(args);
            */
            SpringApplication.run(RedlixApplication.class, args);
        }

}
