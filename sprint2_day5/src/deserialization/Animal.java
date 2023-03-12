package deserialization;

import java.io.Serializable;

public class Animal	implements Serializable {
		String name;
		int height;
		int weight;
		
		public Animal(String name, int height, int weight) {
			super();
			this.name = name;
			this.height = height;
			this.weight = weight;
		}

		@Override
		public String toString() {
			return "Animal [name=" + name + ", height=" + height + ", weight=" + weight + "]";
		}
		
		
}
