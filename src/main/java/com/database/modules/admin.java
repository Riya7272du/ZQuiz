package com.database.modules;

public class admin {
		private int idadmin;
		private String registration;
		private String name;
		private String email;
		private String password;
		
		public admin(String email, String password) {
			super();
			this.email = email;
			this.password = password;
		}
		
		public admin() {
			super();
		}

		public admin(String name, String email, String password) {
			super();
			this.name = name;
			this.email = email;
			this.password = password;
		}
		
		public admin(String registration, String name, String email, String password) {
			super();
			this.registration = registration;
			this.name = name;
			this.email = email;
			this.password = password;
		}
		
		

		public admin(int idadmin, String registration, String name, String email, String password) {
			super();
			this.idadmin = idadmin;
			this.registration = registration;
			this.name = name;
			this.email = email;
			this.password = password;
		}
		
		public int getIdadmin() {
			return idadmin;
		}
		public void setIdadmin(int idadmin) {
			this.idadmin = idadmin;
		}
		public String getRegistration() {
			return registration;
		}
		public void setRegistration(String registration) {
			this.registration = registration;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		
		
		
		
}
