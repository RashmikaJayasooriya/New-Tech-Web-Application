package com.newtech.listner;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("BASE_URL", context.getContextPath()+"/");
        context.setAttribute("assets", context.getContextPath()+"/assets");
        context.setAttribute("admin_assets", context.getContextPath()+"/assets/admin");
//        context.setAttribute("App", new AppUtil(context));
//        Env.getProperties().put("app_url","http://localhost:8080"+context.getContextPath());
        System.out.println("contextInitialized...");
//        MailServiceProvider.getInstance().start();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
//        MailServiceProvider.getInstance().shutdown();
    }
}
