package com.model;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotBlank(message = "Name must not be empty")
    @Size(max = 50, message = "Name must be less than 50 characters")
    private String name;
    @NotBlank(message = "Address must not be empty")
    @Size(max = 200, message = "Address must be less than 200 characters")
    private String address;
    @NotBlank(message = "Latitude must not be empty")
    private long latitude;
    @NotBlank(message = "Longitude must not be empty")
    private long longitude;
    @Size(max = 250, message = "Description must be less than 250 characters")
    private String description;
}
