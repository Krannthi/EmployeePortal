package configuration;

import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;

@Configuration
@EnableWebMvc

public class ViewInit extends WebMvcConfigurerAdapter {
	
@Override
public void configureViewResolvers(ViewResolverRegistry registry) {
	
	System.out.println("In view init");

	UrlBasedViewResolver urlresolver = new UrlBasedViewResolver();
	urlresolver.setViewClass(org.springframework.web.servlet.view.JstlView.class);
	urlresolver.setPrefix("/WEB-INF/views/jsp/");
	urlresolver.setSuffix(".jsp");
	registry.viewResolver(urlresolver);	

}





}