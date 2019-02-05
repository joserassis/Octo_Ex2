using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] vetor = new string[5];
            vetor[0] = "abcde";
            vetor[1] = "fghij";
            vetor[2] = "klmno";
            vetor[3] = "pqrst";
            vetor[4] = "uvwxyz";
            Random random = new Random();

            string str = "<table class=\"table table-hover table-striped JPO_open\" id=\"table\">" +
                "<tr style=\"font-weight: bold\"><td>Col 1</td><td>Col 2</td><td>Col 3</td><td>Col 4</td><td>Col 5</td></tr>";
            for (int i = 0; i < 6; i++)
            {
                str += "<tr><td>" + vetor[random.Next(5)] + "</td>" +
                    "<td>" + vetor[random.Next(5)] + "</td>" +
                    "<td>" + vetor[random.Next(5)] + "</td>" +
                    "<td>" + vetor[random.Next(5)] + "</td>" +
                    "<td>" + vetor[random.Next(5)] + "</td></tr>";
            }
            str += "<tr><td>6 registros</td></tr></table>";
            tbl.InnerHtml = str;
        }
    }
}
