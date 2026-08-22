using System;
using System.Collections.Generic;

namespace RegistrationForm
{
    // Main class for the Registration Form page
    public partial class RegistrationForm : System.Web.UI.Page
    {
        // Page_Load runs whenever the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        // Validates whether the user has selected a gender
        protected void cvGender_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            // Form is valid if either Male or Female is selected
            args.IsValid = rbMale.Checked || rbFemale.Checked;
        }


        // Validates whether the user has accepted the terms
        protected void cvTerms_ServerValidate(
            object source,
            System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            // Form is valid only when the checkbox is selected
            args.IsValid = chkTerms.Checked;
        }


        // This method executes when the Submit button is clicked
        protected void btnSubmit_Click(
            object sender,
            EventArgs e)
        {
            // Run all the validators on the page
            Page.Validate();

            // Continue only if all validation rules are satisfied
            if (Page.IsValid)
            {
                // Create a list to store student registration data
                List<Student> students = new List<Student>();

                // Create a new Student object
                Student student = new Student();


                // Get the values entered by the user
                student.Name = txtName.Text;
                student.Email = txtEmail.Text;
                student.Phone = txtPhone.Text;

                // Get the selected stream from the dropdown
                student.Stream = ddlStream.SelectedValue;

                // Get the enrollment number
                student.Enrollment = txtEnrollment.Text;


                // Check which gender radio button is selected
                if (rbMale.Checked)
                {
                    student.Gender = "Male";
                }
                else
                {
                    student.Gender = "Female";
                }


                // Get the age entered by the user
                student.Age = txtAge.Text;

                // Since validation passed, the terms have been accepted
                student.Terms = "Yes";


                // Add the student object to the list
                students.Add(student);


                // Send the student data to the GridView
                gvStudents.DataSource = students;

                // Display the data in the GridView
                gvStudents.DataBind();

                // Make the GridView visible
                gvStudents.Visible = true;
            }
        }


        // This method executes when the Reset button is clicked
        protected void btnReset_Click(
            object sender,
            EventArgs e)
        {
            // Clear the Name field
            txtName.Text = "";

            // Clear the Email field
            txtEmail.Text = "";

            // Clear the Phone field
            txtPhone.Text = "";


            // Set the Stream dropdown back to the first option
            ddlStream.SelectedIndex = 0;


            // Clear the Enrollment Number
            txtEnrollment.Text = "";


            // Unselect both gender radio buttons
            rbMale.Checked = false;
            rbFemale.Checked = false;


            // Clear the Age field
            txtAge.Text = "";


            // Uncheck the Terms checkbox
            chkTerms.Checked = false;


            // Hide the result table
            gvStudents.Visible = false;
        }


        // Student class is used to store registration information
        public class Student
        {
            // Stores student's name
            public string Name { get; set; }

            // Stores student's email
            public string Email { get; set; }

            // Stores student's phone number
            public string Phone { get; set; }

            // Stores student's selected stream
            public string Stream { get; set; }

            // Stores student's enrollment number
            public string Enrollment { get; set; }

            // Stores student's gender
            public string Gender { get; set; }

            // Stores student's age
            public string Age { get; set; }

            // Stores whether the terms were accepted
            public string Terms { get; set; }
        }
    }
}