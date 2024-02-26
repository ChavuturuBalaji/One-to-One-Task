package com.example.OneToOneDemo.Entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class PersonAddress {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int addressID;
    private String street;
    private String city;
    private String state;
    private String zip;
    @OneToOne(mappedBy = "personAddress")
    private Person person;
}
