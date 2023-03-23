package com.database.modules;

public class student {

		private String registration;
		private String email;
		private String name;
		private String password;
		
		public student() {
			super();
			}
	
		public student(String name) {
		super();
		this.setName(name);
	}

		
		public student(String registration,String email,String name, String password) {
		super();
		this.setRegistration(registration);
		this.setName(name);
		this.setEmail(email);
		this.setPassword(password);
		
	}

		public String getRegistration() {
			return registration;
		}

		public void setRegistration(String registration) {
			this.registration = registration;
		}

	
		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		

}
