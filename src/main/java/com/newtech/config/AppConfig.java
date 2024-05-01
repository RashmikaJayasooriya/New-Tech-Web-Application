package com.newtech.config;

import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;

public class AppConfig extends ResourceConfig {
    public AppConfig(){
//        register packages
        packages("com.newtech.controller");
        packages("com.newtech.middleware");

        register(MultiPartFeature.class);
        register(DependencyBinder.class);
        register(JspMvcFeature.class);
//        template base path
        property(JspMvcFeature.TEMPLATE_BASE_PATH,"/WEB-INF/views");
    }
}
