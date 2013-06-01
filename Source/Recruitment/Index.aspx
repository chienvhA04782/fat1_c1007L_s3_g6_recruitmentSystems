<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Recruitment.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div style="padding-left: 10px; top: 0; width: 100%;">
        <h2 style="color: #404040; font-weight: normal">Vacancys Avaiable</h2>
        <div style="margin-top: 10px">
            <div style="border-bottom: 1px solid #d1d0d1; padding-bottom: 5px; color: #5e5b5e; margin-top: 10px">
                <table>
                    <tr>
                        <th style="width: 50px"></th>
                        <th style="width: 300px">Name
                        </th>
                        <th style="width: 100px">Salary
                        </th>
                        <th style="width: 100px">Address
                        </th>
                        <th style="width: 170px">Date End
                        </th>
                        <th></th>
                    </tr>
                </table>
            </div>
            <ul class="vacancysList">
                <asp:ListView ID="ltv_AllVacancys" runat="server">
                    <ItemTemplate>
                        <li>
                            <table class="table-condensed">
                                <tr>
                                    <td style="width: 50px">
                                        <%=Count++ %>
                                    </td>
                                    <td style="width: 300px; height: 50px">
                                        <a href="#"><%#Eval("Vacancy_Name") %></a>
                                    </td>
                                    <td style="width: 100px">
                                        <%#Eval("Vacancy_Salary") %>
                                    </td>
                                    <td style="width: 100px">
                                        <%#Eval("Vacancy_WorkAddress") %>
                                    </td>
                                    <td style="width: 170px"><%#Eval("Vacancy_DateEnd") %></td>
                                    <td>
                                        <a style="padding-bottom: 0" href="ViewVancancys.aspx?appId=<%#Eval("Vacancy_Id") %>" class="btn">View</a>
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!-- slider-holder -->
    <div class="slider-holder">
        <!-- slider -->
        <div class="slider">
            <div class="socials">
                <a href="#" class="facebook-ico">facebook-ico</a> <a href="#" class="twitter-ico">twitter-ico</a> <a href="#" class="skype-ico">skype-ico</a> <a href="#" class="rss-ico">rss-ico</a>
                <div class="cl">
                    &nbsp;
                </div>
            </div>
            <div class="arrs">
                <a href="#" class="prev-arr"></a><a href="#" class="next-arr"></a>
            </div>
            <ul>
                <li id="img1">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img2">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img3">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img4">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img5">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img6">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img7">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
                <li id="img8">
                    <div class="slide-cnt">
                        <h4>Heading Title Goes</h4>
                        <h2>Just Like That</h2>
                        <p>
                            Acor porta mi, non venenatis augue imperdiet quis. Nam faucibus, felis ut suscipit vulputate, tortor quam ultricies neque, eget dignissim elit urna a metus. Aliquam sed quam dui, id lacinia nunc. <a href="#">read more</a>
                        </p>
                    </div>
                    <img src="css/images/mac-img.png" alt="" />
                </li>
            </ul>
        </div>
        <!-- end of slider -->
        <style>
            .vacancysList li {
                list-style-type: none;
                border-bottom: 1px solid #d1d0d1;
            }

                .vacancysList li a {
                    padding-bottom: 10px;
                    display: block;
                }
        </style>

        <!-- thumbs -->
        <div id="thumbs-wrapper">
            <div id="thumbs">
                <a href="#img1" class="selected">
                    <img src="css/images/thumb.png" /></a> <a href="#img2">
                        <img src="css/images/thumb2.png" /></a> <a href="#img3">
                            <img src="css/images/thumb3.png" /></a> <a href="#img4">
                                <img src="css/images/thumb4.png" /></a> <a href="#img5">
                                    <img src="css/images/thumb.png" /></a> <a href="#img6">
                                        <img src="css/images/thumb2.png" /></a> <a href="#img7">
                                            <img src="css/images/thumb3.png" /></a> <a href="#img8">
                                                <img src="css/images/thumb4.png" /></a>
            </div>
            <a id="prev" href="#"></a><a id="next" href="#"></a>
        </div>


        <!-- end of thumbs -->
    </div>
</asp:Content>


