package com.myspringboot.demo.controller;

import com.myspringboot.demo.dao.AlienCrudRepo;
import com.myspringboot.demo.dao.AlienMongoRepo;
import com.myspringboot.demo.dto.AlienDoc;
import com.myspringboot.demo.dto.AlienEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

/*
    MVC and REST controller
 */
@Controller
public class AlienController {

    @Autowired
    public AlienMongoRepo alienMongoRepo;

    @Autowired
    public AlienCrudRepo alienCrudRepo;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String redirect() {
        return "alienForm";
    }

    @RequestMapping(value = "/alienForm", method = RequestMethod.GET)
    public String showAlienForm() {
        return "alienForm";
    }

    @RequestMapping(value = "addAlien", method = RequestMethod.POST)
    public String addAlien(AlienDoc alien) {
        alienMongoRepo.save(alien);
        return "redirect:/alienForm?success=true";
    }

    @RequestMapping(value = "getAlien", method = RequestMethod.GET)
    public ModelAndView getAlien(String id) {
        ModelAndView mv = new ModelAndView("showAlien");
        AlienDoc alien = alienMongoRepo.findById(id).orElse(new AlienDoc());
        mv.addObject("alien", alien);
        return mv;
    }

    @RequestMapping(value = "/aliens", method = RequestMethod.GET, produces = {"application/xml"})
    @ResponseBody
    public String getAliensRest() {
        return alienCrudRepo.findAll().toString();
    }

    @RequestMapping(value = "/aliens/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Optional<AlienEntity> getAliensRest(@PathVariable int id) {
        return alienCrudRepo.findById(id);
    }

    @PostMapping(value = "/aliens", consumes = {"application/json"})
    @ResponseBody
    public AlienEntity getAliensRest(@RequestBody AlienEntity a) {
        alienCrudRepo.save(a);
        return a;
    }
}
