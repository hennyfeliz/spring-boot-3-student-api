package com.student.DTO.StudentDTO;

import com.student.entity.Student;

public record StudentCreateRequest(
        String id,
        String nombre,
        String direccion,
        String telefono,
        String correo
) {

  public static Student convertToStudent(StudentCreateRequest studentRequest){
    return new Student(
            studentRequest.id,
            studentRequest.nombre,
            studentRequest.direccion,
            studentRequest.telefono,
            studentRequest.correo
    );
  }
}
