package com.student.controller;


import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/student")
public class StudentController {

  @GetMapping("/")
  public ResponseEntity<String> getText(){
    return new ResponseEntity<>("well, it's working...", HttpStatus.OK);
  }

}
