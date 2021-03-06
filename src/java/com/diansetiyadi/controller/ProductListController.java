/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.dao.ProductService;
import com.diansetiyadi.model.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/product")
public class ProductListController {

    @Autowired
    ProductService ps;
    
    @RequestMapping(value="/All")
    public String showAllProduct(Model model) {
        List<Product> products = ps.findAll();
        model.addAttribute("products", products);
        model.addAttribute("totalproducts", products.size());
        return "productlist";

    }
    
    
}
