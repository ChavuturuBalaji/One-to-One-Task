package com.example.OneToOneDemo.Controller;

import com.example.OneToOneDemo.Entity.Person;
import com.example.OneToOneDemo.Entity.PersonAddress;
import com.example.OneToOneDemo.Service.PersonSer.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PersonController {

    @Autowired
    PersonService personSer;

    @RequestMapping("/")
    public String home(){
        System.out.println("abcedf");
        return "home";
    }

    @RequestMapping("/add")
    public String add(ModelMap model){
        Person person = new Person();
        model.put("person",person);
        return "add";
    }

    @PostMapping("/store")
    public String store(@ModelAttribute("person") Person person){
        return personSer.add(person);
    }

    @GetMapping("/all")
    public String getAll(ModelMap model){
        List<Person> persons = personSer.persons();
        model.put("persons",persons);
        return "all";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("personId") int personId){
        return personSer.delete(personId);
    }

    @GetMapping("/updateDetails")
    public String update(@RequestParam("personId") int personId, ModelMap model){
        Person person = personSer.update(personId);
        model.put("person",person);
        return "update";
    }

    @PostMapping("/update")
    public String updated(@ModelAttribute("person") Person person){
        personSer.updated(person);
        return "redirect:/all";
    }
}
