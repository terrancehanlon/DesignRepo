using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string titleText= titleInput.Text;
            string descriptionText = descriptionInput.Text;
            string date = dateInput1.Text;

            //if(titleText.Equals("") { }

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Challenges.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
            SqlConnection myConnection = new SqlConnection(connectionString);
            myConnection.Open();

            string sqlInsertString = "INSERT INTO dbo.[Table] ( Title, Description, Date ) VALUES ( @titleParam,  @descriptionParam, @dateParam )";
            SqlCommand updateChallengeCommand = new SqlCommand(sqlInsertString, myConnection);
            updateChallengeCommand.Parameters.AddWithValue("@titleParam", SqlDbType.VarChar).Value = titleText;
            updateChallengeCommand.Parameters.AddWithValue("@descriptionParam", SqlDbType.VarChar).Value = descriptionText;
            updateChallengeCommand.Parameters.AddWithValue("@dateParam", SqlDbType.VarChar).Value = date;
            updateChallengeCommand.CommandType = CommandType.Text;

            updateChallengeCommand.ExecuteNonQuery();
            myConnection.Close();

            Response.Redirect("/SubmissionSuccessful.aspx");
        }
    }
}