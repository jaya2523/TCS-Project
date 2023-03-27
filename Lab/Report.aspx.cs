using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = DAL.dalViews.FetchList3();
            var list1 = DAL.dalViews.FetchList4();
            var list2 = DAL.dalViews.FetchList5();
            var list3 = DAL.dalViews.FetchList6();
            if (list.Count > 0)
            {
                string chartData1 = "";
                string LabA = "";
                string labels = "";
                chartData1 += "<script>";
                foreach (var item in list)
                {
                    LabA += item.LabA + ",";
                    labels += "\"" + item.Year + "\",";
                }
                LabA = LabA.Substring(0, LabA.Length);
                labels = labels.Substring(0, labels.Length - 1);
                chartData1 += "labels = [" + labels + "]; chartData1 = [" + LabA + "] ";
                chartData1 += "</script>";
                ltChartData1.Text = chartData1;
            }
            if (list1.Count > 0)
            {
                string chartData2 = "";
                string LabB = "";
                string labels = "";
                chartData2 += "<script>";
                foreach (var item1 in list1)
                {

                    LabB += item1.LabB + ",";
                    labels += "\"" + item1.Year + "\",";
                }
                LabB = LabB.Substring(0, LabB.Length);
                labels = labels.Substring(0, labels.Length - 1);
                chartData2 += "labels = [" + labels + "]; chartData2 = [" + LabB + "] ";
                chartData2 += "</script>";
                ltChartData2.Text = chartData2;
            }
            if (list2.Count > 0)
            {
                string chartData3 = "";
                string LabC = "";
                string labels = "";
                chartData3 += "<script>";
                foreach (var item2 in list2)
                {
                    LabC += item2.LabC + ",";
                    labels += "\"" + item2.Year + "\",";
                }
                LabC = LabC.Substring(0, LabC.Length);
                labels = labels.Substring(0, labels.Length - 1);
                chartData3 += "labels = [" + labels + "]; chartData3 = [" + LabC + "] ";
                chartData3 += "</script>";
                ltChartData3.Text = chartData3;
            }
            if (list3.Count > 0)
            {
                string chartData4 = "";
                string LabD = "";
                string labels = "";
                chartData4 += "<script>";
                foreach (var item3 in list3)
                {
                    LabD += item3.LabD + ",";
                    labels += "\"" + item3.Year + "\",";
                }
                LabD = LabD.Substring(0, LabD.Length);
                labels = labels.Substring(0, labels.Length - 1);
                chartData4 += "labels = [" + labels + "]; chartData4 = [" + LabD + "] ";
                chartData4 += "</script>";
                ltChartData4.Text = chartData4;
            }

        }

    }
}
