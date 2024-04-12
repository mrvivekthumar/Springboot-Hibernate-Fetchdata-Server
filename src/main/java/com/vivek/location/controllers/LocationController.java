package com.vivek.location.controllers;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vivek.location.entities.Location;
import com.vivek.location.service.LocationService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

@Controller
public class LocationController {

	@Autowired
	LocationService service; 

	@RequestMapping("/kt")
	public String showCreate() {
		return "createLocation";
	}

	@RequestMapping("/saveLoc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		Location locationSaved = service.saveLocation(location);
		String msg = "Location Saved with id : " + locationSaved.getId();
		modelMap.addAttribute("msg", msg);
		return "createLocation";
	}

	@RequestMapping("/displayLocations")
	public String displayLocations(ModelMap modelMap) {
		List<Location> locations = service.getallLocation();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}

	@RequestMapping("/deleteLocation")
	public String deleteLocation(@RequestParam("id") int id, ModelMap modelMap) {
		Location location = new Location();
		location.setId(id);
		service.deleteLocation(location);
		List<Location> getallLocation = service.getallLocation();
		modelMap.addAttribute("locations", getallLocation);
		return "displayLocations";
	}

	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id") int id, ModelMap modelMap) {
		Optional<Location> location = service.getLocationById(id);
		modelMap.addAttribute("locations", location);
		return "updateLocation";
	}
	
	@RequestMapping("/updateLoc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		service.updateLocation(location);
		List<Location> getallLocation = service.getallLocation();
		modelMap.addAttribute("locations", getallLocation);
		return "displayLocations";
	}

}
