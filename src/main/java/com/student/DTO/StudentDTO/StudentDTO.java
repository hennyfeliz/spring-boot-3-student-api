package com.student.DTO.StudentDTO;

import com.student.entity.Student;

import java.util.List;

public record StudentDTO(
        String id,
        String nombre,
        String direccion,
        String telefono,
        String correo
) {

  public static StudentDTO convertoToDTO(Student student){
    return new StudentDTO(
      student.getId(),
      student.getNombre(),
      student.getDireccion(),
      student.getTelefono(),
      student.getCorreo()
    );
  }

  public static List<StudentDTO> convertAllToDTO(List<Student> students){
    return students.stream().map(StudentDTO::convertoToDTO).toList();
  }
}
