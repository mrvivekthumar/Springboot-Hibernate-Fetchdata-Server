package com.vivek.location.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vivek.location.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

}