package serialization;

import java.io.Serializable;

public class Human implements Serializable{
		String name;
		int age;
		double weight;
		
		
		public Human(String name, int age, double weight) {
			super();
			this.name = name;
			this.age = age;
			this.weight = weight;
		}


		@Override
		public String toString() {
			return "Human [name=" + name + ", age=" + age + ", weight=" + weight + "]";
		}
		
		
}
