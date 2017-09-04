package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/** rleopold5@hotmail.com **/
@Entity
//@Table(name = "users")
public class Users {
		
    public Users() {
	}

	@Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    @Column(name = "user_id")
    private Integer user_id;

//  @Column(name = "dni")
    private int dni;
 
//  @Column(name = "nombre")
  private String nombre;
  
//  @Column(name = "apellido")
  private String apellido;
 
//    @Column(name = "email")
    private String email;
    
//    @Column(name = "dirccion")
    private String dirccion;

//  @Column(name = "telefono")
  private int telefono; 
  
	public int getDni() {
		return dni;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDirccion() {
		return dirccion;
	}

	public void setDirccion(String dirccion) {
		this.dirccion = dirccion;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Integer getUser_id() {
        return user_id;
    }
 
    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
}