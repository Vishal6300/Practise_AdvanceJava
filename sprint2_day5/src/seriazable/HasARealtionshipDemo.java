package seriazable;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.Serializable;

class Rat implements Serializable{
	int age= 1;
}

class Cat implements Serializable{
	Rat r= new Rat();
}

class Dog implements Serializable{
	Cat c = new Cat();
}

public class HasARealtionshipDemo {

	public static void main(String[] args) throws IOException, ClassNotFoundException {
		{
		Dog d= new Dog();
		ObjectOutput oo= new ObjectOutputStream(new FileOutputStream("dog.ser"));
		oo.writeObject(d);
		oo.close();
		
		}
		{
//			Dog d= new Dog();
//			ObjectOutput oo= new ObjectOutputStream(new FileOutputStream("dog.ser"));
//			oo.writeObject(d);
//			oo.close();	
		}

	}

}
