package com.beans;
import java.io.Serializable;
public class GetArea implements Serializable{
	
	private double radius;
	private double area;

	public GetArea(){
		
	}
	public GetArea(double radius){
		this.radius=radius;
	}
	
	public double calculate(){
		return this.radius*3.14*this.radius;

	}
	
}
