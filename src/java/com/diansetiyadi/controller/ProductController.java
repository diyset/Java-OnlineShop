/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.Bean.RegisterProductFormBean;
import com.diansetiyadi.dao.ProductService;
import com.diansetiyadi.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/registerproduct")
public class ProductController {

    @Autowired
    ProductService ps;

    @RequestMapping()
    public String registerForm(Model model) {
        RegisterProductFormBean registerProductBean = new RegisterProductFormBean();
        model.addAttribute("registerBean", registerProductBean);
        return "registerproduct";
    }
  

    @RequestMapping(value = "/save")
    public String saveRegistrationProduct(@ModelAttribute("registerBean") RegisterProductFormBean registerBean, Model model) {
        Product product = new Product();
        product.setAvailable(registerBean.getAvailable());
        product.setDescription(registerBean.getDescription());

        product.setQuantityOnHand(Integer.parseInt(registerBean.getQuantityOnHand()));
        product.setPurchaseCost(Double.parseDouble(registerBean.getPurchaseCost()));
        product.setImagepath(registerBean.getImagepath());
        ps.saveProduct(product);
        model.addAttribute("data", registerBean);
        
        return "redirect:/registerproduct";
    }
   
    @RequestMapping("/productlist")
    public String showAllProduct(Model model){
        List<Product> products = ps.findAll();
        model.addAttribute("products",products);
        model.addAttribute("totalproducts",products.size());
        return "productlist";
        
    }
    

}
