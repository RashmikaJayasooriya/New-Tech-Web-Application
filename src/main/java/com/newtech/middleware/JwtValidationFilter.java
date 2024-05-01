package com.newtech.middleware;

import com.newtech.model.User;
import com.newtech.service.UserService;
import com.newtech.util.JwtTokenUtil;
import io.fusionauth.jwt.JWTExpiredException;
import jakarta.annotation.Priority;
import jakarta.inject.Inject;
import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.core.Cookie;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.Provider;

import java.io.IOException;
import java.net.URI;
import java.util.List;

@Provider
@Priority(1)
public class JwtValidationFilter implements ContainerRequestFilter {
    @Inject
    private JwtTokenUtil tokenUtil1;
    @Inject
    private UserService userService;

    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        String path = requestContext.getUriInfo().getPath();
        System.out.println("path"+" "+path);
        Cookie accessTokenCookie = requestContext.getCookies().get("admin_access_token");

        if(path.equals("admin")||path.equals("addProduct") || path.equals("updateProduct") || path.equals("searchProduct")|| path.equals("deleteProduct")|| path.equals("categoryAdd")|| path.equals("brandAdd")|| path.equals("subCategoryAdd")|| path.equals("technicalSpecificationAdd")|| path.equals("technicalSpecificationToSubCategoryAdd")){
            if (accessTokenCookie == null) {
                requestContext.abortWith(Response.seeOther(URI.create("adminlogin")).build());
                return;
            }else{
                String token = accessTokenCookie.getValue();

                try {
                    //Check if the user is a admin
                    User userDetails = userService.isAdmin(tokenUtil1.getUsernameFromToken(token), tokenUtil1.getPasswordFromToken(token));
//                    System.out.println(userDetails.getEmail());
                    if (!tokenUtil1.validateToken(token, userDetails)) {
                        requestContext.abortWith(Response.seeOther(URI.create("adminlogin")).status(Response.Status.UNAUTHORIZED).build());
                    }

                } catch (JWTExpiredException | NullPointerException ex) {
                    //Redirect to login.jsp after expired
                    requestContext.abortWith(Response.seeOther(URI.create("adminlogin")).build());
                } catch (Exception e) {
                    requestContext.abortWith(Response.seeOther(URI.create("adminlogin")).status(Response.Status.UNAUTHORIZED).build());
                }
            }
        }else {
            return;
        }

    }
}
