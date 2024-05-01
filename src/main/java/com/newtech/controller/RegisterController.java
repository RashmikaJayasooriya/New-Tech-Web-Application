package com.newtech.controller;

import com.newtech.dto.RegisterDTO;
import com.newtech.model.User;
import com.newtech.service.UserService;
import com.newtech.util.Encryption;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.UUID;

@Path("/register")
public class RegisterController {
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO) {
        System.out.println("----------------");
        System.out.println(registerDTO.getEmail());
        UserService userService = new UserService();
        User byEmail = userService.getByEmail(registerDTO.getEmail());
        if (byEmail != null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Email Already exists").build();
        } else {
            User user = new User();
            user.setEmail(registerDTO.getEmail());
            user.setPassword(Encryption.encrypt(registerDTO.getPassword()));

            String verification_Code = UUID.randomUUID().toString();
            user.setVerification_code(verification_Code);

            user.setFirst_name(registerDTO.getFirst_name());
            user.setLast_name(registerDTO.getLast_name());
            user.setPhone(registerDTO.getMobile());
            user.setGender(registerDTO.getGender());

            userService.saveUser(user);

            return Response.ok().entity("Register Success").build();
        }

    }
}