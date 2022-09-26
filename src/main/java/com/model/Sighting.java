package com.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class Sighting {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Superhero superhero;
    private Location location;
    @NotBlank(message = "Date must not be empty")
    private LocalDate date;

}
