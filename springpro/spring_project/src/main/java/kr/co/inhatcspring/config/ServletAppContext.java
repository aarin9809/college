package kr.co.inhatcspring.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration // 이 클래스가 스프링 설정 클래스임을 나타냄
@EnableWebMvc // Spring MVC를 활성화
@ComponentScan("kr.co.inhatcspring") // 지정된 패키지에서 Spring 컴포넌트를 스캔
@PropertySource("/WEB-INF/properties/db.properties") // 데이터베이스 설정을 포함한 프로퍼티 파일의 경로를 지정합
@MapperScan("kr.co.inhatcspring.mapper") // MyBatis 매퍼 인터페이스가 위치한 패키지를 지정
public class ServletAppContext implements WebMvcConfigurer {

	// 데이터베이스 연결 정보는 외부 프로퍼티 파일에서 로드
	@Value("${db.classname}") // db.classname = oracle.jdbc.OracleDriver
	private String db_classname;

	@Value("${db.url}") // 데이터베이스 URL db.url = jdbc:oracle:thin:@localhost:1521:ORCLCDB(SID)
	private String db_url; // SID 주소는 SQL 쉘에서 SELECT INSTANCE FROM V$THREAD; 명령어로 확인 가능

	@Value("${db.username}") // 데이터베이스 사용자 이름 db.username = c##spring_project
	private String db_username;

	@Value("${db.password}") // 데이터베이스 비밀번호 db.password = password
	private String db_password;

	// 뷰 리졸버를 설정하여 JSP 파일을 찾는 역할
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/"); // JSP 파일의 경로 접두사를 설정
		resolver.setSuffix(".jsp"); // JSP 파일의 경로 접미사를 설정
		registry.viewResolver(resolver);
	}

	// 데이터베이스 연결을 위한 DataSource 빈을 생성합니다.
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname); // 데이터베이스 드라이버 클래스 이름 설정
		source.setUrl(db_url); // 데이터베이스 URL 설정
		source.setUsername(db_username); // 데이터베이스 사용자 이름 설정
		source.setPassword(db_password); // 데이터베이스 비밀번호 설정
		return source;
	}

	// MyBatis의 SqlSessionFactory 빈을 생성합니다.
	@Bean
	public SqlSessionFactory sqlSessionFactory(BasicDataSource dataSource) throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(dataSource); // SqlSessionFactory에 DataSource 설정
		factoryBean.getObject().getConfiguration().setMapUnderscoreToCamelCase(true); 
		return factoryBean.getObject();
	}
}
