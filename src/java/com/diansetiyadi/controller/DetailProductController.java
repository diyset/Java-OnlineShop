/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.dao.ProductService;
import com.diansetiyadi.model.*;
import com.diansetiyadi.model.Product;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/detailproduct")
public class DetailProductController {

    @Autowired
    ProductService ps;

    int carts_no = 0;
    Cart cartlist = new Cart();

    @RequestMapping(value = "/{productId}")
    public String detailProduct(@PathVariable Integer productId, Model model) {
        System.out.println(" detail : ");
        BigDecimal bd;
        Product product = ps.findById(productId);
        model.addAttribute("products", product);
        return "detailproduct";
    }

    @RequestMapping("/add/{id}")
    public String addCart(Model model, HttpSession session, @PathVariable Integer id) {
        int quantity = 0;
        double totalHarga = 0;

        DecimalFormat df = new DecimalFormat("###,###.##");
        if (session.getAttribute("carts") == null) {
            Cart carts = new Cart();
            carts.getCartItems().put(id, new Item(ps.findById(id), 1));
            session.setAttribute("carts", carts);
            Map<Integer, Item> products = carts.getCartItems();
            for (Map.Entry<Integer, Item> entry : products.entrySet()) {
                totalHarga += entry.getValue().getProduct().getPurchaseCost().doubleValue();
                totalHarga = totalHarga * entry.getValue().getQuantity();
               
            }

            String totalHargaString = df.format(totalHarga).toString();
            Iterator totalCart = carts.getCartItems().entrySet().iterator();
            session.setAttribute("totalHarga", totalHargaString);
            session.setAttribute("totalCarts", quantity);

        } else {
            Cart carts = (Cart) session.getAttribute("carts");
            int index = isExisting(id, session);
            if (index == -1) {
                carts.getCartItems().put(id, new Item(ps.findById(id), 1));
            } else {

                quantity = carts.getCartItems().get(id).getQuantity() + 1;
                carts.getCartItems().put(id, new Item(ps.findById(id), quantity));
                Map<Integer, Item> products = carts.getCartItems();
                for (Map.Entry<Integer, Item> entry : products.entrySet()) {
                    totalHarga += entry.getValue().getProduct().getPurchaseCost().doubleValue();
                    totalHarga = totalHarga * entry.getValue().getQuantity();   
                }
                String totalHargaString = df.format(totalHarga).toString();
                session.setAttribute("totalHarga", totalHargaString);
            }
            session.setAttribute("carts", carts);
        }

        return "redirect:/welcome";
    }

    @RequestMapping(value="/checkout/save")
    public String checkoutCart(Model model, HttpSession session) {
        
           session.removeAttribute("carts");
           
        return "checkout";
    }
    
    @RequestMapping("/delete/{id}")
    public String deleteCart(Model model, HttpSession session, @PathVariable Integer id) {
        
        Cart carts = (Cart) session.getAttribute("carts");
        double totalHarga = 0;
        if (carts.getCartItems().get(id).getQuantity() != 0) {
            int qtyLama = carts.getCartItems().get(id).getQuantity();
            carts.getCartItems().put(id, new Item(ps.findById(id), qtyLama - 1));
        }
        if (carts.getCartItems().get(id).getQuantity() == 0) {
            carts.getCartItems().remove(id);
        }
        Map<Integer, Item> products = carts.getCartItems();
        for (Map.Entry<Integer, Item> entry : products.entrySet()) {
            totalHarga += entry.getValue().getProduct().getPurchaseCost().doubleValue();
            totalHarga = totalHarga * entry.getValue().getQuantity();

        }

        session.setAttribute("carts", carts);
        session.setAttribute("totalHarga", totalHarga);
        return "redirect:/detailproduct/show";
    }

    @RequestMapping("/deleteItem/{id}")
    public String deleteCartItem(Model model, HttpSession session, @PathVariable Integer id) {
        Cart cart = (Cart) session.getAttribute("carts");
        cart.getCartItems().remove(id);
        session.setAttribute("carts", cart);
        return "redirect:/detailproduct/show";
    }

    @SuppressWarnings("unchecked")
    private int isExisting(int id, HttpSession session) {

        Cart carts = (Cart) session.getAttribute("carts");

        if (carts != null) {
            if (carts.getCartItems().get(id) != null) {
                return carts.getCartItems().get(id).getQuantity();
            }
        }
        return -1;
    }

    @RequestMapping(value = "/show")
    public String showCart(Model model, HttpSession session, HttpSession request) {

        return "summarycart";
    }

}
