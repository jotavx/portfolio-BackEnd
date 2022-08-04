/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.portfolio.jv.Entity;

 
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Persona {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY )
    private Long id;
     
    @NotNull
    @Size(min = 1, max = 50, message = "No cumple con la longitud.")
    private String nombre;
    
    @NotNull
    @Size(min = 1, max = 50, message = "No cumple con la longitud.")
    private String apellido;
    
    @NotNull
    @Size(min = 1, max = 50, message = "No cumple con la longitud.")
    private String edad;
    
    
    @NotNull
    @Size(min = 1, max = 50, message = "No cumple con la longitud")
    private String domicilio; 
    
    @Size(min = 1, max = 50, message = "No cumple con la longitud.")
    private String titulo;
    
    @NotNull
    @Size(min = 1, max = 255, message = "No cumple con la longitud")
    private String sobremi; 
    
    @Size(min = 1, max = 255, message = "No cumple con la longitud.")
    private String img;
  
    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSobremi() {
        return sobremi;
    }

    public void setSobremi(String sobremi) {
        this.sobremi = sobremi;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }
    

}
