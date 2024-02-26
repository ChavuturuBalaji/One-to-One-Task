package com.example.OneToOneDemo.Service.PersonSer.Interface;

import com.example.OneToOneDemo.Entity.Person;

import java.util.List;

public interface PersonServiceInter {
    public String add(Person person);
    public List<Person> persons();
    public String delete(int id);
    public Person update(int id);
    public void updated(Person person);
}
