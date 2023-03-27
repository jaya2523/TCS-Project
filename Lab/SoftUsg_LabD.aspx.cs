using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class SoftUsg_LabD : System.Web.UI.Page
    {
        public int total;
        public int total2;
        protected void Page_Load(object sender, EventArgs e)
        {

            var list = DAL.dalViews.FetchList2();
            if (list.Count > 0)
            {
                string chartData2 = "";
                string chartData1 = "";
                string chartData3 = "";
                string chartData4 = "";
                this.total = 0;
                this.total2 = 0;
                string obsvdays = "";
                string obsvweeks = "";
                string labels = "";
                chartData1 += "<script>";
                chartData2 += "<script>";
                chartData3 += "<script>";
                chartData4 += "<script>";
                foreach (var item in list)
                {
                    total += item.obsvHrsDay;
                    total2 += item.obsvHrsWeek;
                    obsvdays += item.obsvHrsDay + ",";
                    obsvweeks += item.obsvHrsWeek + ",";
                    labels += "\"" + item.softwares + "\",";
                }
                obsvweeks = obsvweeks.Substring(0, obsvweeks.Length - 1);
                obsvdays = obsvdays.Substring(0, obsvdays.Length - 1);
                labels = labels.Substring(0, labels.Length - 1);
                chartData1 += "chartLabels = [" + labels + "]; chartData1 = [" + obsvdays + "] ";
                chartData1 += "</script>";
                chartData2 += "chartLabels = [" + labels + "]; chartData2 = [" + obsvweeks + "] ";
                chartData2 += "</script>";

                chartData3 += "chartData3 = [" + total + "] ";
                chartData3 += "</script>";

                chartData4 += "chartData4 = [" + total2 + "] ";
                chartData4 += "</script>";

                ltChartData1.Text = chartData1;
                ltChartData2.Text = chartData2;

                Literal1.Text = chartData1;
                Literal2.Text = chartData2;

                ltChartData5.Text = chartData3;
                ltChartData6.Text = chartData4;
            }
        }
    }
}