package hello.sevlet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan // 서블릿 자동 등록 -> 현재 패키지/하위 패키지를 다 뒤져서 서블릿을 찾아서 등록하고 실행하도록 도움
@SpringBootApplication
public class SevletApplication {

	public static void main(String[] args) {
		SpringApplication.run(SevletApplication.class, args);
	}

}
