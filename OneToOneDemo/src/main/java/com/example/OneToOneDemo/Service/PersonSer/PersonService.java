package com.example.OneToOneDemo.Service.PersonSer;

import com.example.OneToOneDemo.Entity.Person;
import com.example.OneToOneDemo.Repository.PersonRepository.PersonRepository;
import com.example.OneToOneDemo.Service.PersonSer.Interface.PersonServiceInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonService implements PersonServiceInter {
    @Autowired
    PersonRepository personRepo;

    @Override
    public String add(Person person){
        personRepo.save(person);
        return "redirect:/all";
    }

    @Override
    public List<Person> persons() {
        return personRepo.findAll();
    }

    @Override
    public String delete(int id){
        personRepo.deleteById(id);
        return "redirect:/all";
    }

    @Override
    public Person update(int id) {
        return personRepo.findById(id).get();
    }

    @Override
    public void updated(Person person){
        Person per = personRepo.findById(person.getId()).get();
        per.setName(person.getName());
        per.setEmail(person.getEmail());
        per.setMobile(person.getMobile());
        per.getPersonAddress().setCity(person.getPersonAddress().getCity());
        per.getPersonAddress().setStreet(person.getPersonAddress().getStreet());
        per.getPersonAddress().setState(person.getPersonAddress().getState());
        per.getPersonAddress().setZip(person.getPersonAddress().getZip());
        personRepo.save(per);
    }
}
