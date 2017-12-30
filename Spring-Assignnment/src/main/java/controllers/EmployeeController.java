package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/Employee")
public class EmployeeController {
	
public EmployeeController()
{
	
	System.out.println("In Employee Controller");

}
	
	
@RequestMapping(value="/Login", method=RequestMethod.GET)	
public String login(@RequestParam(required=false) String id, @RequestParam(required = false) String password)
{
 if(id == null || password == null)
 return "login";
 
 else
 {
	 
	 
	 
	 
 }
	
return "Search";	
}

}
