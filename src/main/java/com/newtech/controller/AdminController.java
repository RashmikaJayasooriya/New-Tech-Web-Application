package com.newtech.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class AdminController {
    @GET
    @Path("/admin/add-product")
    public Viewable adminAddProduct(){return new Viewable("/frontend/admin/productAddPartOfAdmin");}
    @GET
    @Path("/admin/view-product")
    public Viewable adminViewProduct(){return new Viewable("/frontend/admin/productDetailsPartOfAdmin");}
    @GET
    @Path("/admin/category-setup-product")
    public Viewable adminCategorySetupProduct(){return new Viewable("/frontend/admin/productCategoryPartOfAdmin");}
    @GET
    @Path("/adminlogin")
    public Viewable adminLogin(){
        return new Viewable("/frontend/auth/adminLogin");
    }
}