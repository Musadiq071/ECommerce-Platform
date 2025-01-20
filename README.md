# ECommerce-Platform

A dynamic and fully functional ECommerce web application built using **ASP.NET Web Forms**, designed to provide a seamless shopping experience. This project integrates a user-friendly interface with backend functionality and database management.

---

## 🌟 Features

- **User Authentication**:  
  Register, log in, and manage user accounts securely.
- **Product Listings**:  
  Browse products with detailed descriptions and images.
- **Shopping Cart**:  
  Add, remove, and update items in your cart.
- **Order Management**:  
  Simulate order placement and processing.
- **Database Integration**:  
  SQL Server database for managing users, products, and orders.

---

## 💻 Technologies Used

- **Frontend**: HTML, CSS, JavaScript  
- **Backend**: ASP.NET Web Forms (C#)  
- **Database**: SQL Server (E-Commerce.SQL file)  
- **Tools**: Visual Studio, IIS Express  

---

## 📂 Folder Structure

ECommerce/ ├── Frontend/ # HTML, CSS, JS files 
├── Backend/ # ASP.NET pages and .cs files 
├── Database/ # E-Commerce.SQL 
├── Web.config # Application configuration

yaml
Copy
Edit

---

## ⚙️ Setup Instructions

### Prerequisites

- Visual Studio (2019 or later)  
- SQL Server (or equivalent database management tool)  
- IIS Express or another web server  

---

### Steps

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/yourusername/ECommerce.git
   cd ECommerce
Open the Project

Open ECommerce.sln in Visual Studio.
Restore NuGet Packages

In Visual Studio, navigate to:
Tools → NuGet Package Manager → Manage NuGet Packages for Solution...
Restore any missing packages.
Set Up the Database

Open SQL Server Management Studio (SSMS).
Run the E-Commerce.SQL file to create the database and populate it with sample data.
Update the connection string in Web.config to point to your database:
xml
Copy
Edit
<connectionStrings>
  <add name="DefaultConnection" connectionString="Your_Connection_String_Here" />
</connectionStrings>
Run the Application

Set ECommerce as the startup project.
Press F5 to build and run the application.




👤 Contact
Name: Musadiq Shahani
Email: musadiqshahani@yahoo.com
LinkedIn: www.linkedin.com/in/musadiq-hussain
GitHub: https://github.com/Musadiq071


Feel free to fork this project, report issues, or contribute to its development! 
