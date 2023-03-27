<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Lab.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .row {
            height: 140px;
        }
        .btn:hover{
            background:white;
            border:4px solid #ffd32a;
            color:#ffd32a;
        }
        .btn-ripple {
display: inline-block;
position: relative;
overflow: hidden;
transition: all ease-in-out .5s;
}

.btn-ripple::after {
content: "";
display: block;
position: absolute;
top: 0;
left: 25%;
height: 100%;
width: 50%;
background-color: #000;
border-radius: 50%;
opacity: 0;
pointer-events: none;
transition: all ease-in-out 1s;
transform: scale(5, 5);
}

.btn-ripple:active::after {
padding: 0;
margin: 0;
opacity: .2;
transition: 0s;
transform: scale(0, 0);
}
    </style>

                <div class="container" style="margin-top:40px;margin-bottom:40px">
                    <div class="row">
                        <div class="col-3">
                            <asp:LinkButton runat="server"  PostBackUrl="~/LAB_A.aspx" CssClass="btn btn-primary w-100 h-100 text-xl-center font-weight-bold "><h3 style="margin-top:20px"><b>LAB-A</b><br/></h3><h4>Mobile Computing LAB</h4></asp:LinkButton></div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_B.aspx" class="btn btn-secondary w-100 h-100  btn-ripple"><h3 style="margin-top:20px"><b>LAB-B</b><br/></h3><h4>IOT LAB</h4></asp:LinkButton></div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_C.aspx" class="btn btn-danger w-100 h-100"><h3 style="margin-top:20px"><b>LAB-C</b><br/></h3><h4>Mechatronics LAB</h4></asp:LinkButton></div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_D.aspx" class="btn btn-success w-100 h-100"><h3 style="margin-top:20px"><b>LAB-D</b><br/></h3><h4>Microprocessor & Automation LAB</h4></asp:LinkButton></div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_A.aspx" class="btn btn-warning w-100 h-100"><h3 style="margin-top:20px"><b>LAB-E</b><br/></h3><h4>Web  Technology LAB</h4></asp:LinkButton>
                        </div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_B.aspx" class="btn btn-info w-100 h-100"><h3 style="margin-top:20px"><b>LAB-F</b><br/></h3><h4>Mathematics & Simulation LAB</h4></asp:LinkButton></div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_C.aspx" class="btn btn-dark w-100 h-100"><h3 style="margin-top:20px"><b>LAB-G</b><br/></h3><h4>Basic Programming LAB</h4></asp:LinkButton></div>
                        <div class="col-3">
                            <asp:LinkButton runat="server" PostBackUrl="~/LAB_D.aspx" class="btn btn-primary  w-100 h-100"><h3 style="margin-top:20px"><b>LAB-H</b><br/></h3><h4>Agile LAB</h4></asp:LinkButton></div>
                    </div></div>
                    
</asp:Content>
