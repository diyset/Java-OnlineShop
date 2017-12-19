/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.dao.UserService;
import com.diansetiyadi.model.User;
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
@RequestMapping("/dataUser")
public class UserController {
    
    @Autowired
    UserService us;
    
   @RequestMapping(value="/all")
    public String showAllCustomers(Model model){
        List<User> users = us.findAll();
        model.addAttribute("users",users);
        model.addAttribute("totalusers",users.size());
        return "userAllData";
        
    }
            
}
