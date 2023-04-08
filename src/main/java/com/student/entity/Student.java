package com.student.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

@Table(name = "estudiantes")
@AllArgsConstructor
@NoArgsConstructor
@Getter @Setter
@ToString
@Entity
public class Student {

  @Id
  @Column(name = "id_estudiante")
  @GenericGenerator(name = "uuid2", strategy = "uuid2")
  @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "uuid2")
  private String id;
  private String nombre;
  private String direccion;
  private String telefono;
  private String correo;

}
