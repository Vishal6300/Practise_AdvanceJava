package seriazable;

import java.io.Serializable;

class P implements Serializable{
	int i;

	public P(int i) {
		super();
		this.i= i;
	}
	
	
}

class Q implements Serializable{
	int j;

	public Q(int j) {
		super();
		this.j=j;
	}

	@Override
	public String toString() {
		return "Q [j=" + j + "]";
	}
	
}

public class InhertanceSerizationClassDemo {
	public static void main(String[] args) {
		{
//			Q q= new Q(10,20);
		}
	}
}
