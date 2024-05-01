package com.newtech.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.newtech.dto.*;
import com.newtech.model.*;
import com.newtech.service.CategoryService;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.ArrayList;
import java.util.List;

@Path("/")
public class AdminCategoryAddController {
    @GET
    @Path("/admin/getCategory")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCategory() {
        CategoryService categoryService = new CategoryService();
        List<Category> allCategories = categoryService.getAllCategories();

        List<CategoryDTO> categoryDTOs = new ArrayList<>();
        for (Category category : allCategories) {
            CategoryDTO categoryDTO = new CategoryDTO((long) category.getId(), category.getDescription(), category.getName());
            categoryDTOs.add(categoryDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(categoryDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }

        return Response.ok(json).build();

    }

    @GET
    @Path("/admin/getSubCategory")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getSubCategory() {
        CategoryService categoryService = new CategoryService();
        List<SubCategory> allSubCategories = categoryService.getAllSubCategories();

        List<CategoryDTO> subCategoryDTOs = new ArrayList<>();
        for (SubCategory subcategory : allSubCategories) {
            CategoryDTO subCategoryDTO = new CategoryDTO((long) subcategory.getId(), subcategory.getDescription(), subcategory.getName());
            subCategoryDTOs.add(subCategoryDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(subCategoryDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }

        return Response.ok(json).build();

    }

    @GET
    @Path("/admin/getSubCategoryRelateToCategory")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getSubCategoryRelateToCategory(@QueryParam("categoryId") String categoryId) {
        CategoryService categoryService = new CategoryService();
        Category categoryById = categoryService.getCategoryById(categoryId);
        List<SubCategory> allSubCategories = categoryService.getAllSubCategoriesRelateToCategory(categoryById);

        List<CategoryDTO> subCategoryDTOs = new ArrayList<>();
        for (SubCategory subcategory : allSubCategories) {
            CategoryDTO subCategoryDTO = new CategoryDTO((long) subcategory.getId(), subcategory.getDescription(), subcategory.getName());
            subCategoryDTOs.add(subCategoryDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(subCategoryDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }

        return Response.ok(json).build();

    }

    @GET
    @Path("/admin/getTechnicalSpecification")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getTechnicalSpecification() {
        CategoryService categoryService = new CategoryService();
        List<TechnicalSpecification> allTechnicalSpecifications = categoryService.getAllTechnicalSpecifications();

        List<CategoryDTO> technicalSpecificationsDTOs = new ArrayList<>();
        for (TechnicalSpecification technicalSpecification : allTechnicalSpecifications) {
            CategoryDTO technicalSpecificationDTO = new CategoryDTO((long) technicalSpecification.getId(), technicalSpecification.getName());
            technicalSpecificationsDTOs.add(technicalSpecificationDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(technicalSpecificationsDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }

        return Response.ok(json).build();

    }

    @GET
    @Path("/admin/getBrand")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getBrand() {
        CategoryService categoryService = new CategoryService();
        List<Brand> allBrands = categoryService.getAllBrands();

        List<CategoryDTO> brandDTOs = new ArrayList<>();
        for (Brand brand : allBrands) {
            CategoryDTO brandDTO = new CategoryDTO((long) brand.getId(), brand.getName());
            brandDTOs.add(brandDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(brandDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }

        return Response.ok(json).build();

    }

    @GET
    @Path("/admin/getBrandRelateToSubCategory")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getBrandRelateToSubCategory(@QueryParam("subCategoryId") String subCategoryId) {
        CategoryService categoryService = new CategoryService();
        SubCategory subCategoryById = categoryService.getsubCategoryById(subCategoryId);
        List<SubCategoryBrand> allBrandsRelateToSubCategory = categoryService.getAllBrandsRelateToSubCategory(subCategoryById);

        List<CategoryDTO> brandDTOs = new ArrayList<>();
        for (SubCategoryBrand subCategoryBrand : allBrandsRelateToSubCategory) {
            Brand brandByName = categoryService.getBrandByName(subCategoryBrand.getBrand().getName());
            CategoryDTO brandDTO = new CategoryDTO((long) brandByName.getId(), brandByName.getName(),brandByName.getDescription());
            brandDTOs.add(brandDTO);
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String json;
        try {
            json = objectMapper.writeValueAsString(brandDTOs);
        } catch (JsonProcessingException e) {
            return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Error while converting to JSON").build();
        }
        return Response.ok(json).build();
    }

    @POST
    @Path("/admin/categoryAdd")
    public Response adminCategoryAdd(CategoryDTO categoryDTO) {
        System.out.println("------------------category-register------------------");
        CategoryService categoryService = new CategoryService();
        Category categoryByName = categoryService.getCategoryByName(categoryDTO.getName());
        if (categoryByName != null) {
            return Response.ok().entity("Category Has Already Been Registered").build();
        } else {
            Category category = new Category();
            category.setName(categoryDTO.getName());
            category.setDescription(categoryDTO.getDescription());
            categoryService.addCategory(category);
            return Response.ok().entity("Category Register Success").build();
        }
    }

    @POST
    @Path("/brandAdd")
    public Response adminBrandAdd(BrandDTO brandDTO) {
        System.out.println("------------------brand-register------------------");
        CategoryService categoryService = new CategoryService();
        Brand brandByName = categoryService.getBrandByName(brandDTO.getName());
        if (brandByName != null) {
            return Response.ok().entity("Brand Has Already Been Registered").build();
        } else {
            Brand brand = new Brand();
            brand.setName(brandDTO.getName());
            brand.setDescription(brandDTO.getDescription());
            categoryService.addBrand(brand);
            return Response.ok().entity("Brand Register Success").build();
        }
    }

    @POST
    @Path("/subCategoryAdd")
    public Response adminSubCategoryAdd(SubCategoryDTO subCategoryDTO) {
        System.out.println("------------------SubCategory-register------------------");
        CategoryService categoryService = new CategoryService();
        SubCategory subCategoryByName = categoryService.getsubCategoryByName(subCategoryDTO.getName());
        if (subCategoryByName != null) {
            return Response.ok().entity("Sub Category Has Already Been Registered").build();
        } else {
            SubCategory subCategory = new SubCategory();
            subCategory.setName(subCategoryDTO.getName());

            Category categoryById = categoryService.getCategoryById(subCategoryDTO.getCategoryValue());
            subCategory.setCategoryValue(categoryById);
            subCategory.setDescription(subCategoryDTO.getDescription());
            categoryService.addSubCategory(subCategory);
            return Response.ok().entity("Sub Category Register Success").build();
        }
    }


    @POST
    @Path("/admin/technicalSpecificationAdd")
    public Response admintechnicalSpecificationAdd(TechnicalSpecificationDTO technicalSpecificationDTO) {
        System.out.println("------------------Technical-Specification-register------------------");
        List<String> excepts = new ArrayList<>();
        List<String> includes = new ArrayList<>();
        String responseStatement = "";

        CategoryService categoryService = new CategoryService();

        for (String value : technicalSpecificationDTO.getTechnicalSpecificationValues()) {
            System.out.println(value);
            TechnicalSpecification technicalSpecificationByName = categoryService.getTechnicalSpecificationByName(value);
            System.out.println("----------------" + technicalSpecificationByName != null + "-" + technicalSpecificationByName);
            if (technicalSpecificationByName != null) {
                excepts.add(value);
            } else {
                includes.add(value);

                TechnicalSpecification technicalSpecification = new TechnicalSpecification();
                technicalSpecification.setName(value);
                categoryService.addTechnicalSpecification(technicalSpecification);
            }
        }
        if (!excepts.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are already registered:" + excepts;
        }

        if (!includes.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are registered:" + includes;
        }

        return Response.ok().entity(responseStatement).build();
    }

    @POST
    @Path("/admin/technicalSpecificationToSubCategoryAdd")
    public Response technicalSpecificationToSubCategoryAdd(TechnicalSpecificationToSubCategoryDTO technicalSpecificationToSubCategoryDTO) {
        System.out.println("------------------Technical-Specification-To-Sub-Category-Add------------------");
        List<String> excepts = new ArrayList<>();
        List<String> includes = new ArrayList<>();
        String responseStatement = "";

        CategoryService categoryService = new CategoryService();

        SubCategory subCategory = categoryService.getsubCategoryById(technicalSpecificationToSubCategoryDTO.getSubCategoryValue());
        if (subCategory != null) {
            for (String technicalSpecificationValue : technicalSpecificationToSubCategoryDTO.getTechnicalSpecificationValues()) {
                System.out.println(technicalSpecificationValue);
                TechnicalSpecification specification = categoryService.getTechnicalSpecificationById(technicalSpecificationValue);

                if (specification != null) {
                    SubCategoryTechnicalSpecification subCategoryTechnicalSpecification = categoryService.getTechnicalSpecificationSubCategoryRelationshipById(subCategory, specification);
                    if (subCategoryTechnicalSpecification != null) {
                        excepts.add(specification.getName());
                    } else {
                        SubCategoryTechnicalSpecification subCategoryTechnicalSpecification1 = new SubCategoryTechnicalSpecification();
                        subCategoryTechnicalSpecification1.setSubCategory(subCategory);
                        subCategoryTechnicalSpecification1.setTechnicalSpecification(specification);
                        categoryService.addTechnicalSpecificationToSubCategory(subCategoryTechnicalSpecification1);
                        includes.add(specification.getName());
                    }
                } else {
                    excepts.add(technicalSpecificationValue);
                }
            }
        } else {
            return Response.notModified().entity("Sub Category Not Found").build();
        }

        if (!excepts.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are not found or already registered with the sub category: " + excepts;
        }

        if (!includes.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are registered with the sub category: " + includes;
        }

        return Response.ok().entity(responseStatement).build();
    }

    @POST
    @Path("/admin/subCategoryToBrandAdd")
    public Response subCategoryToBrandAdd(subCategoryToBrandDTO subCategoryToBrandDTO) {
        List<String> excepts = new ArrayList<>();
        List<String> includes = new ArrayList<>();
        String responseStatement = "";

        CategoryService categoryService = new CategoryService();

        Brand brand = categoryService.getBrandById(subCategoryToBrandDTO.getBrandValue());
        if (brand != null) {
            for (String subCategoryValue : subCategoryToBrandDTO.getSubCategoriesValues()) {
                System.out.println(subCategoryValue);
                SubCategory subCategory = categoryService.getsubCategoryById(subCategoryValue);

                if (subCategory != null) {
                    SubCategoryBrand subCategoryBrandRelationship = categoryService.getBrandSubCategoryRelationshipById(brand, subCategory);
                    if (subCategoryBrandRelationship != null) {
                        excepts.add(subCategory.getName());
                    } else {
                        SubCategoryBrand subCategoryBrand = new SubCategoryBrand();
                        subCategoryBrand.setBrand(brand);
                        subCategoryBrand.setSubCategory(subCategory);
                        categoryService.addSubCategoryToBrand(subCategoryBrand);
                        includes.add(subCategory.getName());
                    }
                } else {
                    excepts.add(subCategory.getName());
                }
            }
        } else {
            return Response.notModified().entity("Brand Not Found").build();
        }

        if (!excepts.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are not found or already registered with the brand: " + excepts;
        }

        if (!includes.isEmpty()) {
            responseStatement = responseStatement + "\n" + "These are registered with the brand: " + includes;
        }

        return Response.ok().entity(responseStatement).build();
    }


//    @POST
//    @Path("/addProduct")
//    @Consumes(MediaType.MULTIPART_FORM_DATA)
//    public Response adminCategoryAdd(FormDataMultiPart multiPart) {
//        try {
//            // Get the variant count from the form data
//            String variantCount = multiPart.getField("variantCount").getValueAs(String.class);
//
//            // Process each variant and its image files
//            for (int i = 1; i <= Integer.parseInt(variantCount); i++) {
//                FormDataBodyPart fileDetail1024 = multiPart.getField("variant" + i + "-1024-file");
//                if (fileDetail1024 != null) {
//                    InputStream imageStream1024 = multiPart.getField("variant" + i + "-1024-file").getValueAs(InputStream.class);
//                    saveImage(imageStream1024, "src/main/webapp/assets/images/productImages", "variant" + i + "-1024-file");
//                }
//
//                FormDataBodyPart fileDetail400 = multiPart.getField("variant" + i + "-400-file");
//                if (fileDetail400 != null) {
//                    InputStream imageStream400 = multiPart.getField("variant" + i + "-400-file").getValueAs(InputStream.class);
//                    // Save the 400-sized image as needed
//                }
//
//                FormDataBodyPart fileDetail80 = multiPart.getField("variant" + i + "-80-file");
//                if (fileDetail80 != null) {
//                    InputStream imageStream80 = multiPart.getField("variant" + i + "-80-file").getValueAs(InputStream.class);
//                    // Save the 80-sized image as needed
//                }
//            }
//
//            // Your further processing logic here
//
//            // Return a response indicating success
//            return Response.ok("Product added successfully").build();
//
//        } catch (IOException e) {
//            // Handle any errors
//            e.printStackTrace();
//            return Response.status(Response.Status.INTERNAL_SERVER_ERROR)
//                    .entity("Error adding product").build();
//        }
//    }

//    private void saveImage(InputStream inputStream, String directoryPath, String fileName) throws IOException {
//        File directory = new File(directoryPath);
//        if (!directory.exists()) {
//            directory.mkdirs(); // Create the directory if it doesn't exist
//        }
//
//        String filePath = directoryPath + File.separator + fileName;
//        try (OutputStream outputStream = new FileOutputStream(filePath)) {
//            int bytesRead;
//            byte[] buffer = new byte[8192];
//            while ((bytesRead = inputStream.read(buffer)) != -1) {
//                outputStream.write(buffer, 0, bytesRead);
//            }
//        } finally {
//            inputStream.close();
//        }
//    }


//    @POST
//    @Path("/technicalSpecificationAdd")
//    public Response admintechnicalSpecificationAdd(TechnicalSpecificationDTO technicalSpecificationDTO) {
//        System.out.println("------------------Technical-Specification-register------------------");
//        List<String> excepts = new ArrayList<>();
//        List<String> includes = new ArrayList<>();
//        String responseStatement = "";
//        CategoryService categoryService = new CategoryService();
//
//        SubCategory subCategory = categoryService.getsubCategoryById(technicalSpecificationDTO.getSubCategoryValue());
//        if (subCategory != null) {
//            for (String value : technicalSpecificationDTO.getTechnicalSpecificationValues()) {
//                System.out.println(value);
//                TechnicalSpecification technicalSpecificationByName = categoryService.getTechnicalSpecificationByName(value);
//                System.out.println("----------------"+technicalSpecificationByName!=null+"-"+technicalSpecificationByName);
//                if (technicalSpecificationByName != null) {
//                    excepts.add(value);
//                } else {
//                    includes.add(value);
//
//                    TechnicalSpecification technicalSpecification = new TechnicalSpecification();
//                    technicalSpecification.setName(value);
//                    categoryService.addTechnicalSpecification(technicalSpecification);
//                }
//            }
//            if (!excepts.isEmpty()) {
//                responseStatement = responseStatement + "\n" + "These are already registered:" + excepts;
//            }
//
//            if (!includes.isEmpty()) {
//                responseStatement = responseStatement + "\n" + "These are registered:" + includes;
//            }
//
//            for (String value : includes) {
//                TechnicalSpecification technicalSpecificationByName = categoryService.getTechnicalSpecificationByName(value);
//                if (technicalSpecificationByName != null) {
//                    SubCategoryTechnicalSpecification subCategoryTechnicalSpecification = new SubCategoryTechnicalSpecification();
//                    subCategoryTechnicalSpecification.setTechnicalSpecification(technicalSpecificationByName);
//                    subCategoryTechnicalSpecification.setSubCategory(subCategory);
//                    categoryService.addSubCategoryTechnicalSpecification(subCategoryTechnicalSpecification);
//                }
//            }
//            responseStatement = responseStatement + "\n" + "Sub Category is Combined with Technical Specification";
//        } else {
//            responseStatement = responseStatement + "\n"  + "Sub Category Not Found";
//        }
//
//        return Response.ok().entity(responseStatement).build();
//    }

//    @POST
//    @Path("/combine")
//    public Response categorySubCategoryCombine(CategorySubCategoryCombineDTO categorySubCategoryCombineDTO){
//        System.out.println("-----------------Category-SubCategory-Combine------------------");
//        CategoryService categoryService = new CategoryService();
//        SubCategory subCategoryByName = categoryService.getsubCategoryByName(categoryDTO.getName());
//        if(subCategoryByName!=null){
//            return Response.ok().entity("Sub Category Has Already Been Registered").build();
//        }else{
//            SubCategory subCategory = new SubCategory();
//            subCategory.setName(categoryDTO.getName());
//            subCategory.setDescription(categoryDTO.getDescription());
//            categoryService.addSubCategory(subCategory);
//            return Response.ok().entity("Sub Category Register Success").build();
//        }
//    }

}
