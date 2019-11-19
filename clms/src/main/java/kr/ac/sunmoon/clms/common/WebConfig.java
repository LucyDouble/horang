package kr.ac.sunmoon.clms.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Autowired
	private AuthenticationInterceptor authenticationInterceptor;
	
	@Autowired
	private AccountAccessInterceptor accountAccessInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(authenticationInterceptor)
				.addPathPatterns("/**")
				.excludePathPatterns("/login");
		
		registry.addInterceptor(accountAccessInterceptor)
				.addPathPatterns("/account/**");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}
}
