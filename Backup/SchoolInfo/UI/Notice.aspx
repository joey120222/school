﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="SchoolInfo.UI.Notice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Notice</title>
    <style type="text/css">
        body
        {
            background-color: #f8f8f9;
            margin: 0px;
            padding: 0px;
        }
        *
        {
            box-sizing: border-box;
        }
        .header-container
        {
            width: 100%;
            background-color: #FFFFFF;
            padding: 20px calc(50% - 600px);
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header-logo
        {
            height: 80px;
        }
        .menu-list
        {
            background-color: #2d8cf0;
            color: #FFFFFF;
            height: 50px;
            line-height: 50px;
            display: flex;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
        }
        .menu-item
        {
            height: 50px;
            line-height: 50px;
            text-align: center;
            border-right: 1px solid rgba(255, 255, 255, 0.3);
            font-size: 14px;
            cursor: pointer;
            padding: 0px 40px;
            text-decoration: none;
            color: #FFFFFF;
        }
        .menu-item:hover
        {
            background-color: rgba(0,0,0,0.2);
            color: yellow;
        }
        .menu-item-active
        {
            background-color: rgba(0,0,0,0.2);
            color: yellow;
        }
        .common-image
        {
            width: 1200px;
            display: block;
            margin: 0px auto;
        }
        .common-title
        {
            line-height: 100px;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
        .content-container
        {
            width: 1200px;
            margin: 0px auto 50px auto;
            padding: 30px 20px 0px 20px;
            font-size: 16px;
            line-height: 30px;
        }
        .notice-item
        {
            padding: 10px 0px;
            font-size: 16px;
            line-height: 30px;
            border-bottom: 1px dashed #dcdee2;
        }
        .notice-name
        {
            font-size: 18px;
            line-height: 40px;
            font-weight: bold;
        }
        .notice-content
        {
            padding: 10px 0px;
            font-size: 16px;
            line-height: 30px;
        }
        .footer
        {
            width: 100%;
            height: 100px;
            line-height: 100px;
            text-align: center;
            background-color: #000000;
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header-container">
        <img class="header-logo" src="/Assets/img/logo.jpg" />
        <div class="menu-list">
            <a class="menu-item menu-item-active" href="/UI/Index.aspx">Index</a>
            <a class="menu-item" href="/UI/Club.aspx">Club</a>
            <a class="menu-item" href="/UI/Campus.aspx">Campus</a>
            <a class="menu-item" href="/UI/NeedHelp.aspx">Need Help</a>
            <a class="menu-item" href="/UI/AboutUs.aspx">About Us</a>
        </div>
    </div>
    <!-- Common Title -->
    <div class="common-title">Notice Board</div>
    <div class="content-container">
        <%
            if (dtDataList != null)
            {
                for (int i = 0; i < dtDataList.Rows.Count; i++)
                {
                    %>
                    <div class="notice-item">
                        <div class="notice-name"><%= dtDataList.Rows[i]["notice_name"]%></div>
                        <div class="notice-content"><%= dtDataList.Rows[i]["notice_content"]%></div>
                    </div>
                    <%
                }
            }
        %>
    </div>
    <!-- Footer -->
    <div class="footer">
        Copyright © 2022 by G3
    </div>
</body>
</html>
