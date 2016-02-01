package com.sipingsoft.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sipingsoft.page.Page;
import com.sipingsoft.pojo.Admin;
import com.sipingsoft.pojo.User;
import com.sipingsoft.service.IUserService;

@Controller
@RequestMapping("/")
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping("/addUser")
    public String addUser(User user) {
        System.out.println(user.getName());
        userService.addUser(user);
        return "redirect:/getAllUser";
    }

    @RequestMapping("/deleteUser")
    public String deleteUser(int id) {
        if (userService.deleteUser(id)) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping("/getAllUser")
    public String getAllUser(HttpServletRequest request) {
        List<User> user = userService.getAll();
        request.setAttribute("user", user);
        return "userManager";

    }

    @RequestMapping("/getUser")
    public String getUser(int id, HttpServletRequest request) {
        System.out.println(id);
        User user = userService.getUser(id);
        try {
            user.getId();
        } catch (NullPointerException e) {
            return "error";
        }
        request.setAttribute("user", user);
        return "editUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user, HttpServletRequest request) {
        System.out.println("updateUser");

        if (userService.updateUser(user)) {
            System.out.println("success");
            List<User> user1 = userService.getAll();
            request.setAttribute("user", user1);
            return "redirect:/getAllUser";
        } else {
            return "error";
        }
    }

    @RequestMapping("/search")
    public String search(@RequestParam(required = false, defaultValue = "1") int pageNo, @RequestParam(required = false, defaultValue = "5") int pageSize, @ModelAttribute("name") String name,
                         Model model) {
        // 这里是“信使”诞生之地，一出生就加载了很多重要信息！
        Page page = Page.newBuilder(pageNo, pageSize, "users");
        page.getParams().put("name", name); // 这里再保存查询条件
        model.addAttribute("users", userService.searchPage(name, page));
        model.addAttribute("page", page); // 这里将page返回前台
        return "page";
    }

    @RequestMapping("/login")
    public String login(Admin admin) {
        return "login";
    }
    @RequestMapping("/addUser1") 
    public String addUser() {
        return "addUser";
    }
    @RequestMapping("/error")
    public String error() {
        return "error";
    }

}
