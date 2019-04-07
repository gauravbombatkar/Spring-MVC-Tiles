package com;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 
 * @author Gaurav Bombatkar
 *
 */
@Controller
public class ViewController {

	@Resource
	StudentDao dao;

	@RequestMapping("/")
	public String viewDashboard() {
		return "dashboard.tiles";
	}

	@RequestMapping("viewStudentReg")
	public String viewStudentRegistration(Model model, @RequestParam(value = "id", required = false) Integer id) {
		Student student = new Student();

		if (id != null) {
			student = dao.studentGetId(id);
		}
		model.addAttribute("studentForm", student);

		return "studentReg.tiles";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	// @PostMapping("register")
	public String studentSave(Model model, HttpServletRequest req,
			@RequestParam(value = "filename", required = false) MultipartFile file,
			@ModelAttribute("studentForm") @Valid Student student, BindingResult bindingResult) throws IOException {

		/*
		 * if (bindingResult.hasErrors()) { System.out.println("binding");
		 * model.addAttribute("studentForm", student); return "redirect:viewStudentReg";
		 * 
		 * } else {
		 */

		student.setFilename(file.getOriginalFilename());

		Integer flag = fileUpload(file, req);
		if (flag == 1) {
			Boolean result = dao.saveStudent(student);
			if (result == true) {
				model.addAttribute("success", "Record Save...!");

				return "redirect:viewStudentReg";
			} else {
				model.addAttribute("error", "Some Error Fill Data...!");
				return "redirect:viewStudentReg";
			}
		}
		return "redirect:viewStudentReg";
	}

	@ModelAttribute("studentlist")
	public List<Student> studentDisplay(Model model) {
		List<Student> list = dao.studentList();
		return list;
	}

	// @RequestMapping("deleteStudent")
	@GetMapping("deleteStudent")
	public String studentDelete(Model model, @RequestParam("id") Integer id, RedirectAttributes attributes) {
		Boolean result = dao.studentDelete(id);
		if (result == true) {
			attributes.addFlashAttribute("success", "Delete Data...!");
			model.addAttribute("studentlist", dao.studentList());
			return "redirect:viewStudentReg";
		} else {
			attributes.addFlashAttribute("errormsg", "Not Delete Data...!");
			model.addAttribute("studentlist", dao.studentList());
			return "redirect:viewStudentReg";
		}
	}

	public String studentCount(Model model) {
		return "redirect:viewStudentReg";
	}

	@RequestMapping(value = "/downloadPDF", method = RequestMethod.GET)
	public ModelAndView downloadExcel(Model model, @RequestParam("id") Integer id) {
		// create some sample data
		Student student = dao.studentGetId(id);
		List<Student> list = new ArrayList<>();
		list.add(student);
		// return a view which will be resolved by an excel view resolver
		return new ModelAndView("pdfView", "listPDF", list);

	}

	@SuppressWarnings("deprecation")
	public Integer fileUpload(MultipartFile file, HttpServletRequest req) throws IOException {

		int flag = 0;
		final String uploadDIR = "/resources/upload/";
		// Save file on system
		if (!file.getOriginalFilename().isEmpty()) {
			String path = req.getRealPath("/");// getServletcontext
			BufferedOutputStream outputStream = new BufferedOutputStream(
					new FileOutputStream(new File(path + uploadDIR + file.getOriginalFilename())));

			outputStream.write(file.getBytes());
			outputStream.flush();
			outputStream.close();
			flag = 1;
			return flag;
		} else
			return flag;
	}

	// student list by course
	@GetMapping("studentalllist")
	public String viewListCourse(Model model) {
		Student student = new Student();
		model.addAttribute("studentForm", student);
		return "studentcourse.tiles";
	}

	@ModelAttribute("studentCourseMcalist")
	public List<Student> viewListMca() {
		return dao.viewListMca();
	}

	@ModelAttribute("studentCourseBelist")
	public List<Student> viewListBe() {
		return dao.viewListBe();
	}

	@ModelAttribute("studentCourseMtechlist")
	public List<Student> viewListMtech() {
		return dao.viewListMtech();
	}
	
	@ModelAttribute("studentCourseMsc")
	public List<Student> viewListMsc() {
		return dao.viewListMsc();
	}

}
