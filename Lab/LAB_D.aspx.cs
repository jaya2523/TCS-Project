using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class LAB_D : System.Web.UI.Page
    {

        public int total;
        public int total2;
        public int total3;
        public int total4;
        protected void Page_Load(object sender, EventArgs e)
        {

            var list = DAL.dalViews.FetchList();
            if (list.Count > 0)
            {
                string chartData2 = "";
                string chartData1 = "";
                string chartData3 = "";
                string chartData4 = "";
                string chartData5 = "";
                string chartData6 = "";
                string chartData7 = "";
                string chartData8 = "";
                this.total = 0;
                this.total2 = 0;
                this.total3 = 0;
                this.total4 = 0;
                string obsvdays = "";
                string obsvweeks = "";
                string expecdays = "";
                string expecweeks = "";
                string labels = "";
                chartData1 += "<script>";
                chartData2 += "<script>";
                chartData3 += "<script>";
                chartData4 += "<script>";
                chartData5 += "<script>";
                chartData6 += "<script>";
                chartData7 += "<script>";
                chartData8 += "<script>";
                foreach (var item in list)
                {
                    total += item.obsvHrsDay;
                    total2 += item.obsvHrsWeek;
                    total3 += item.expecHrsDay;
                    total4 += item.expecHrsWeek;
                    obsvdays += item.obsvHrsDay + ",";
                    obsvweeks += item.obsvHrsWeek + ",";
                    expecdays += item.expecHrsDay + ",";
                    expecweeks += item.expecHrsWeek + ",";
                    labels += "\"" + item.systems + "\",";
                }

                obsvweeks = obsvweeks.Substring(0, obsvweeks.Length - 1);
                obsvdays = obsvdays.Substring(0, obsvdays.Length - 1);
                expecweeks = expecweeks.Substring(0, expecweeks.Length - 1);
                expecdays = expecdays.Substring(0, expecdays.Length - 1);
                labels = labels.Substring(0, labels.Length - 1);
                chartData1 += "chartLabels = [" + labels + "]; chartData1 = [" + obsvdays + "] ";
                chartData1 += "</script>";

                chartData2 += "chartLabels = [" + labels + "]; chartData2 = [" + obsvweeks + "] ";
                chartData2 += "</script>";


                chartData5 += "chartLabels = [" + labels + "]; chartData5 = [" + expecdays + "] ";
                chartData5 += "</script>";

                chartData6 += "chartLabels = [" + labels + "]; chartData6 = [" + expecweeks + "] ";
                chartData6 += "</script>";


                chartData3 += "chartData3 = [" + total + "] ";
                chartData3 += "</script>";

                chartData4 += "chartData4 = [" + total2 + "] ";
                chartData4 += "</script>";

                chartData7 += "chartData7 = [" + total3 + "] ";
                chartData7 += "</script>";

                chartData8 += "chartData8 = [" + total4 + "] ";
                chartData8 += "</script>";

                ltChartData1.Text = chartData1;
                ltChartData2.Text = chartData2;

                ltChartData3.Text = chartData5;
                ltChartData4.Text = chartData6;

                ltChartData5.Text = chartData3;
                ltChartData6.Text = chartData4;


            }

        }
    }
}