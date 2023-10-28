package net.admin.categorymanagement.model;

public class Category {

		protected int id;
		protected String name;
		protected String description;
		protected String quantity;
		
		public Category() {
			
		}
		
		
		
		public Category(String name, String description, String quantity) {
			super();
			
			this.name = name;
			this.description = description;
			this.quantity = quantity;
		}



		public Category(int id, String name, String description, String quantity) {
			super();
			this.id=id;
			this.name = name;
			this.description = description;
			this.quantity = quantity;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getQuantity() {
			return quantity;
		}
		public void setQuantity(String quantity) {
			this.quantity = quantity;
		}
		
		
		}
		

