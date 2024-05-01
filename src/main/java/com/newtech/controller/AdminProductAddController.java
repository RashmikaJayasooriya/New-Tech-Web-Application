package com.newtech.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.newtech.dto.ProductDTO;
import com.newtech.dto.ProductUpdateDTO;
import com.newtech.dto.SearchProductDTO;
import com.newtech.model.*;
import com.newtech.service.CategoryService;
import com.newtech.service.ProductService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.*;

import jakarta.ws.rs.core.*;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Path("/admin/a")
public class AdminProductAddController {
    @POST
    @Path("/upload-image/{id}")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response upload(@PathParam("id") Long id, @FormDataParam("noOfFileContainers[]") int noOfFileContainers,@FormDataParam("noOfInputsInFileContainer[]") List<Integer> noOfInputsInFileContainer,@FormDataParam("file[]") FormDataBodyPart body,@FormDataParam("variantColors[]") List<Integer> variantColors){

//        System.out.println(id);
//        System.out.println(noOfFileContainers);
//        System.out.println(noOfInputsInFileContainer);
//        System.out.println(body);
//        System.out.println(variantColors);


//        List<FileUploadService.FileItem> items=new ArrayList<>();
//        FileUploadService uploadService = new FileUploadService(context);
//        ProductService productService = new ProductService();
//        Product product = productService.getById(id);
//
//        body.getParent().getBodyParts().forEach(part -> {
//            InputStream is = part.getEntityAs(InputStream.class);
//            ContentDisposition meta = part.getContentDisposition();
//            FileUploadService.FileItem fileItem = uploadService.upload("product/" + id, is, meta);
//            items.add(fileItem);
//            product.getImages().add(fileItem.getPath());
//            product.setActive(true);
//        });
//
//        productService.update(product);
        return Response.ok().entity("").build();
    }
    @POST
    @Path("/addProduct")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response addProduct(ProductDTO productDTO) {
        ProductService productService = new ProductService();

        Product productByName = productService.getProductByName(productDTO.getProductTitleValue());

        if (productByName != null) {
            return Response.ok().entity("Product Already Registered").build();
        } else {
            Product product = new Product();
            product.setName(productDTO.getProductTitleValue());
            product.setPrice(productDTO.getProductPriceValue());
            product.setStockQuantity(productDTO.getProductInitQtyValue());
            product.setDescription(productDTO.getProductDescriptionValue());
            product.setSKU(productDTO.getProductSKUValue());
            product.setMinStockTreshold(productDTO.getProductMinStockThreshValue());

//            ProductColor colorById = productService.getColorById(productDTO.getProductColorSelectValue());
//            product.setProductColor(colorById);
            ProductStatus statusById = productService.getStatusById();
            product.setStatus(statusById);
            SubCategory subCategoryById = productService.getSubCategoryById(productDTO.getProductSubCategorySelectValue());
            product.setSubCategory(subCategoryById);
            Brand brandById = productService.getBrandById(productDTO.getProductBrandSelectValue());
            product.setBrand(brandById);

            productService.addProduct(product);

            ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
            jsonNodes.put("pid",product.getId());
            jsonNodes.put("name",product.getName());
            jsonNodes.put("price",product.getPrice());
            jsonNodes.put("discountPrice",product.getDescription());

            return Response.ok().entity(jsonNodes).build();
        }


    }



    @PUT
    @Path("/updateProduct")
    public Response updateProduct(ProductUpdateDTO productupdateDTO) {
        ProductService productService = new ProductService();
        System.out.println("------------------------------------"+productupdateDTO.getProductId());
        Product productByName = productService.getProductByName(productupdateDTO.getProductTitleValue());

        if (productByName != null) {
            return Response.ok().entity("Product Already Registered").build();
        } else {

            Product product = productService.getProductById(productupdateDTO.getProductId());

            product.setName(productupdateDTO.getProductTitleValue());
            product.setPrice(productupdateDTO.getProductPriceValue());
            product.setStockQuantity(productupdateDTO.getProductInitQtyValue());
            product.setDescription(productupdateDTO.getProductDescriptionValue());
            product.setSKU(productupdateDTO.getProductSKUValue());
            product.setMinStockTreshold(productupdateDTO.getProductMinStockThreshValue());

            ProductColor colorById = productService.getColorById(productupdateDTO.getProductColorSelectValue());
//            product.setProductColor(colorById);
            ProductStatus statusById = productService.getStatusById();
            product.setStatus(statusById);
            SubCategory subCategoryById = productService.getSubCategoryById(productupdateDTO.getProductSubCategorySelectValue());
            product.setSubCategory(subCategoryById);
            Brand brandById = productService.getBrandById(productupdateDTO.getProductBrandSelectValue());
            product.setBrand(brandById);

            productService.updateProduct(product);

            return Response.ok().entity("Product Updated Successfully").build();
        }
    }

    @GET
    @Path("/searchProduct")
    public void searchProduct(
            @QueryParam("productName") String name,
            @QueryParam("productDescription") String description,
            @QueryParam("productCategory") String category,
            @QueryParam("productSubCategory") String subCategory,
            @QueryParam("productBrand") String brand,
            @Context HttpServletRequest request,
            @Context HttpServletResponse response
    ) {
        ProductService productService = new ProductService();

        List<Product> productList = productService.search(name, description, category, subCategory, brand);
        System.out.println(productList);

        request.setAttribute("searchResult", productList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("\\WEB-INF\\views\\frontend\\tableResult.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            // Handle exceptions
            e.printStackTrace();
        }

    }

    @DELETE
    @Path("/deleteProduct/{productId}")
    public Response deleteProduct(@PathParam("productId") String productId) {
        try {
            System.out.println("Product ID to delete: " + productId);

            ProductService productService = new ProductService();
            Product productById = productService.getProductById(productId);
            if (productById != null) {
                productService.productDelete(productById);
                return Response.ok("Product deleted successfully").build();
            } else {
                return Response.notModified("Product Doesn't Exist").build();
            }
        } catch (Exception e) {
            // Handle exceptions and return an error response
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error deleting product").build();
        }
    }

}
