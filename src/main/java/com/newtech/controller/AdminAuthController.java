package com.newtech.controller;

import com.newtech.dto.AuthDTO;
import com.newtech.dto.AuthResponseDTO;
import com.newtech.model.User;
import com.newtech.service.UserService;
import com.newtech.util.Encryption;
import com.newtech.util.JwtTokenUtil;
import jakarta.inject.Inject;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.Date;

@Path("/adminauth")
public class AdminAuthController {
    @Inject
    private JwtTokenUtil jwtTokenUtil;

    @Inject
    UserService userService;
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
//    @Produces(MediaType.APPLICATION_JSON)
    public Response loginAction(AuthDTO authDTO, @Context HttpServletRequest request, @Context HttpServletResponse httpResponse) {
        System.out.println(authDTO.getEmail());

        Cookie[] cookies = request.getCookies();
        String refreshTokenCookieExistValue = null;

        if (cookies != null) {
            System.out.println("------------------------------------------Cookies nn");
            for (Cookie cookie : cookies) {
                // Add the modified cookie to the response
                if ("admin_refresh_token".equals(cookie.getName())) {
                    refreshTokenCookieExistValue = cookie.getValue();
                    break;
                }
            }
        }

        JwtTokenUtil tokenUtil = new JwtTokenUtil();
        UserService userService = new UserService();
        User ud = userService.getByAdminEmailAndPassword(authDTO.getEmail(), Encryption.encrypt(authDTO.getPassword()));

        if (ud != null) {

            if (refreshTokenCookieExistValue == null) {
                String accessToken = tokenUtil.generateAcessToken(ud);
                String refreshToken = tokenUtil.generateRefreshToken(ud);
                Date expireDate = tokenUtil.getExpireDateFromToken(accessToken);

                AuthResponseDTO dto = new AuthResponseDTO();
                dto.setAccessToken(accessToken);
                dto.setRefreshToken(refreshToken);
                dto.setExpireIn(expireDate.toString());

                // Set cookies here
                Cookie accessTokenCookie = new Cookie("admin_access_token", accessToken);
                Cookie refreshTokenCookie = new Cookie("admin_refresh_token", refreshToken);

                System.out.println("4");

                // Set expiration time for the cookies (if needed)
                int maxAgeInSeconds = 30 * 24 * 60 * 60; // 30 days
                accessTokenCookie.setMaxAge(maxAgeInSeconds);
                refreshTokenCookie.setMaxAge(maxAgeInSeconds);


                // Add cookies to the response
                httpResponse.addCookie(accessTokenCookie);
                httpResponse.addCookie(refreshTokenCookie);
            } else {
                System.out.println("-----------------------------------------------------------refresh");
                // Pass the refreshToken to the refreshToken method
                return refreshToken(refreshTokenCookieExistValue, request, httpResponse);
            }

            return Response.ok().entity("Signed In Successfully..").build();

        } else {
            return Response.status(Response.Status.UNAUTHORIZED).entity("Invalid Email or Password...").build();
        }
    }


    @Path("/refresh-token")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response refreshToken(@FormParam("refreshToken") String refreshToken, @Context HttpServletRequest request, @Context HttpServletResponse response) {
        UserService userService = new UserService();
        JwtTokenUtil jwtTokenUtil = new JwtTokenUtil();

        User userDetails = userService.getByAdminEmailAndPassword(jwtTokenUtil.getUsernameFromToken(refreshToken), jwtTokenUtil.getPasswordFromToken(refreshToken));
        if (!jwtTokenUtil.validateToken(refreshToken, userDetails)) {
            return Response.status(Response.Status.UNAUTHORIZED).entity("Invalid Username or Password...").build();
        } else {
            String accessToken = jwtTokenUtil.generateAcessToken(userDetails);
            Date expireDate = jwtTokenUtil.getExpireDateFromToken(accessToken);

            AuthResponseDTO dto = new AuthResponseDTO();
            dto.setAccessToken(accessToken);
            dto.setRefreshToken(refreshToken);
            dto.setExpireIn(expireDate.toString());

            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("admin_access_token".equals(cookie.getName())) {
                        // Replace the existing access token in the cookie with the new one
                        cookie.setValue(accessToken);
                        // Add the updated cookie to the response
                        response.addCookie(cookie);
                        break;
                    }
                }
            }

            return Response.ok().entity("Verified Successfully...").build();
        }
    }



}



