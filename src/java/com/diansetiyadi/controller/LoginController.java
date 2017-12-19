/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.Bean.LoginBean;
import com.diansetiyadi.dao.UserService;
import com.diansetiyadi.model.User;
import com.diansetiyadi.util.MD5Enkripsi;
import java.io.IOException;
import javax.servlet.http.HttpSession;
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
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService us;

    @RequestMapping()
    public String goToLogin(Model model) {
        LoginBean loginBean = new LoginBean();
        model.addAttribute("loginBean", loginBean);
        return "login";
    }

    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginBean loginBean, Model model) throws IOException {
        User user = us.findByUserName(loginBean.getUsername());
        if (user.getUsername() == null) {
            model.addAttribute("msg", "Username Salah");
            return "login";
        }
        String encryptedPassword = MD5Enkripsi.createEncryptedPassword(loginBean.getPassword());
        if (!encryptedPassword.equals(user.getPassword())) {
            model.addAttribute("msg", "Password Salah");
            return "login";

        }
        session.setAttribute("user",user);
        session.setAttribute("hi", "Hi");
        return "redirect:/welcome";
    }
    
    
}
