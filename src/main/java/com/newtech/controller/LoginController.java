package com.newtech.controller;

import com.newtech.dto.AuthResponseDTO;
import com.newtech.model.User;
import com.newtech.service.UserService;
import com.newtech.util.JwtTokenUtil;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.Date;

@Path("/login")
public class LoginController {

    @GET
    public Viewable loginView(){
        return new Viewable("/frontend/auth/login");
    }

}
