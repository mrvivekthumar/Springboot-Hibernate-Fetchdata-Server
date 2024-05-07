package com.vivek.location.repos;

import com.vivek.location.entities.Location;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LocationRepository extends JpaRepository<Location, Integer> {

	@Query("SELECT l.type, COUNT(l.type) FROM Location l GROUP BY l.type")
	public List<Object[]> findTypeAndTypeCount();
}