/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.controller;

import com.diansetiyadi.Bean.RegisterFormBean;
import com.diansetiyadi.dao.UserService;
import com.diansetiyadi.model.User;
import com.diansetiyadi.util.MD5Enkripsi;
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
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    UserService us;

    @RequestMapping()
    public String registerForm(Model model) {
        RegisterFormBean registerBean = new RegisterFormBean();
        model.addAttribute("registerBean", registerBean);
        return "register";
    }

    @RequestMapping(value = "/save")
    public String saveRegistration(@ModelAttribute("registerBean") RegisterFormBean registerBean, Model model) {
        User user = new User();
        String encryptedPassword = MD5Enkripsi.createEncryptedPassword(registerBean.getPassword());
        user.setFirstName(registerBean.getFirstName());
        user.setLastName(registerBean.getLastName());
        user.setUsername(registerBean.getUsername());
        user.setEmail(registerBean.getEmail());
        user.setKota(registerBean.getKota());
        user.setNoHp(registerBean.getNoHp());
        user.setAlamatJalan(registerBean.getAlamatJalan());

        user.setPassword(encryptedPassword);
        User usercheck = us.findByUserName(registerBean.getUsername());
        if (usercheck.getUsername() == null) {
            us.saveUser(user);
            model.addAttribute("data", registerBean);
            return "redirect:/welcome";
        } else if (usercheck.getUsername() != null) {
            model.addAttribute("message", "Username Sudah Di Gunakan!");
        }
        return "register";

    }

    @RequestMapping("/editprofile")
    public String editProfileForm(Model model) {
        RegisterFormBean registerBean = new RegisterFormBean();
        model.addAttribute("registerBean", registerBean);
        return "editprofileuser";
    }

    @RequestMapping(value = "/editprofile/save")
    public String editProfileUser(@ModelAttribute("registerBean") RegisterFormBean registerBean, Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        String encryptedPassword = MD5Enkripsi.createEncryptedPassword(registerBean.getPassword());

        user.setFirstName(registerBean.getFirstName());
        user.setLastName(registerBean.getLastName());
        user.setEmail(registerBean.getEmail());
        user.setKota(registerBean.getKota());
        user.setNoHp(registerBean.getNoHp());
        user.setAlamatJalan(registerBean.getAlamatJalan());
        user.setPassword(encryptedPassword);

        us.editUser(user);
        model.addAttribute("data", registerBean);
        return "redirect:/welcome";
    }

}
