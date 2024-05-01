package com.newtech.controller;

import com.newtech.dto.TestDTO;
import com.newtech.service.TestService;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class TestController {
    @GET
    @Path("/test")
    public Viewable testIndex(){
        return new Viewable("/frontend/test");
    }

    @POST
    @Path("/addnumber")
    public String validateNumber(TestDTO testDTO){
        TestService testService = new TestService();
        return testService.checkOddOrEven(testDTO.getNumber());
    }
}
