using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;


namespace TicTakTik
{
   
    public partial class GamePage : System.Web.UI.Page
    {
        bool turn = true;
        int turn_count = 0;

        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            
        }

        protected void button_click(object sender, EventArgs e)
        {
            
            Button b = (Button)sender;
            if (Session["Turn"] == null)
                Session.Add("Turn", true);

            var turn = (bool)Session["Turn"];
            if (turn)
            {
                Session["Turn"] = false;
              b.Text = "X";
            }

            else
            {
                Session["Turn"] = true;
                b.Text = "O";
            }
            b.Enabled = false;
            turn_count++;

            checkforwinner();

        }

        public void checkforwinner()
        {
            bool there_is_a_winner = false;

            if ((A1.Text == A2.Text) && (A2.Text == A3.Text))
                there_is_a_winner = true;
            else if ((B1.Text == B2.Text) && (B2.Text == B3.Text))
                there_is_a_winner = true;
            else if ((C1.Text == C2.Text) && (C2.Text == C3.Text))
                there_is_a_winner = true;

            else if ((A1.Text == B1.Text) && (B1.Text == C1.Text))
                there_is_a_winner = true;
            else if ((A2.Text == B2.Text) && (B2.Text == C2.Text))
                there_is_a_winner = true;
            else if ((A3.Text == B3.Text) && (B3.Text == C3.Text))
                there_is_a_winner = true;
            else if ((A1.Text == B2.Text) && (B2.Text == C3.Text))
                there_is_a_winner = true;
            else if ((A3.Text == B2.Text) && (B2.Text == C1.Text))
                there_is_a_winner = true;


            if (there_is_a_winner)
            {
                String winner = "";
                if (turn)
                {
                    winner = "O";
                }
                else
                {
                    winner = "X";
                }
                if(turn_count==9)
                {
                
                }

            }

        }
            public void disableButtons()
        {
            foreach (Control c in Controls)
            {
                try
                {
                    Button b = (Button)c;
                    b.Enabled = false;
                }
                catch { }
            }
        }
        }
    }
