package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dao.EmpDao;
import com.spring.model.Employee;


@Controller
public class EmpController {

	 @Autowired  
	    EmpDao dao;//will inject dao from xml file  
	      
	    /*It displays a form to input data, here "command" is a reserved request attribute 
	     *which is used to display object data into form 
	     */
//	 @RequestMapping("/")
//	 	public String home() {
//	 		return "index";
//	 	}
	 

	 @RequestMapping("/search")
	    public String searchEmployee(@RequestParam int  id, Model model) {
		 try {
	            Employee employee = dao.getEmpById(id);
	            if (employee != null) {
	                model.addAttribute("employee", employee);
	                return "data"; // If employee found, return data view
	            } else {
	                // If employee not found, add error message to model
	                model.addAttribute("errorMessage", "Employee with ID " + id + " not found.");
	                return "error"; // Return error view
	            }
	        } catch (EmptyResultDataAccessException e) {
	            // Handle EmptyResultDataAccessException
	            model.addAttribute("errorMessage", "Employee with ID " + id + " not found.");
	            return "error"; // Return error view
	        }
	    }
	 
	    @RequestMapping("/empform")  
	    public String showform(Model m){  
	    	m.addAttribute("command", new Employee());
	    	return "empform"; 
	    }  
	    /*It saves object into database. The @ModelAttribute puts request data 
	     *  into model object. You need to mention RequestMethod.POST method  
	     *  because default request is GET*/  
	    @RequestMapping(value="/save",method = RequestMethod.POST)  
	    public String save(@ModelAttribute("emp") Employee emp){  
	        dao.save(emp);  
	        return "redirect:/viewemp";//will redirect to viewemp request mapping  
	    }  
	    /* It provides list of employees in model object */  
	    @RequestMapping("/viewemp")  
	    public String viewemp(Model m){  
	        List<Employee> list=dao.getEmployees();  
	        m.addAttribute("list",list);
	        return "viewemp";  
	    }  
	    /* It displays object data into form for the given id.  
	     * The @PathVariable puts URL data into variable.*/  
	    @RequestMapping(value="/editemp/{id}")  
	    public String edit(@PathVariable int id, Model m){  
	        Employee emp=dao.getEmpById(id);  
	        m.addAttribute("command",emp);
	        
	        return "editform";  
	    }  
	    /* It updates model object. */  
	    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	    public String editsave(@ModelAttribute("emp") Employee emp){  
	        dao.update(emp);  
	        return "redirect:/viewemp";  

	    }  
	    /* It deletes record for the given id in URL and redirects to /viewemp */  
	    @RequestMapping(value="/deleteemp/{id}",method = RequestMethod.GET)  
	    public String delete(@PathVariable int id){  
	        dao.delete(id);  
	        return "redirect:/viewemp";  
	
}
}
