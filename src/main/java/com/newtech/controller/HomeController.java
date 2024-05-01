package com.newtech.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class HomeController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/home");
    }

    @GET
    @Path("/productlistning")
    public Viewable productListning(){return new Viewable("/frontend/productlistning");}

    @GET
    @Path("/singleproductview")
    public Viewable singleproductview(){return new Viewable("/frontend/singleproductview");}

    @GET
    @Path("/cart")
    public Viewable cart(){return new Viewable("/frontend/cart");}

    @GET
    @Path("/checkout")
    public Viewable checkout(){return new Viewable("/frontend/checkout");}

    @GET
    @Path("/invoice")
    public Viewable invoice(){return new Viewable("/frontend/invoice");}

    @GET
    @Path("/purchasehistory")
    public Viewable purchasehistory(){return new Viewable("/frontend/purchasehistory");}

    @GET
    @Path("/useraccount")
    public Viewable useraccount(){return new Viewable("/frontend/userAccount");}

    @GET
    @Path("/wishlist")
    public Viewable wishlist(){return new Viewable("/frontend/wishlist");}

    @GET
    @Path("/advancedsearch")
    public Viewable advancedsearch(){return new Viewable("/frontend/advancedSearch");}
}
