package com.myspringboot.demo.controller;

import com.myspringboot.demo.dto.AlienEntity;
import io.swagger.v3.oas.annotations.Hidden;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/*
    MVC controller
 */
@Controller
public class MyController {

    @RequestMapping("hello")
    //public String hello(HttpServletRequest request) {
    public String hello(@RequestParam("name") String myName, HttpSession session) {
        /*
        String name = request.getParameter("name");
        HttpSession session = request.getSession();
        session.setAttribute("name", name);
         */
        session.setAttribute("name", myName);
        return "home";
    }

    @RequestMapping("home")
    public ModelAndView home(@RequestParam("name") String myName) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("name", myName);
        mv.setViewName("home");
        return mv;
    }

    @RequestMapping("alien")
    public ModelAndView alien(AlienEntity alien) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("obj", alien);
        mv.setViewName("alien");
        return mv;
    }
}
