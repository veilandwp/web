﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Collections.Generic;
using BLL;
using Model;

public partial class web_GoverResourceDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            GoverResourceDataBind();
        }
    }

    private void GoverResourceDataBind()
    {
        int goverResourceID = Convert.ToInt32(Request["goverResourceID"]);
        GoverResource goverResource = new GoverResource();
        GoverResourceInfo goverResourceInfo = goverResource.GetGoverResourceById(goverResourceID);
        User user = new User();
        if (goverResourceInfo != null)
        {
            UserInfo userInfo = user.GetUserById(goverResourceInfo.UserID);
            label_manager2.Text = userInfo.UserName;
            label_city2.Text = goverResourceInfo.GoverCity;
            label_organName2.Text = goverResourceInfo.OrganName;
            label_organIntro2.Text = goverResourceInfo.OrganIntro;
        }

        ContactGridView.DataSource = goverResource.SearchAllContactsByGoverResourceID(goverResourceID);
        ContactGridView.DataBind();

        ddlCurrentPage.Items.Clear();
        for (int i = 1; i <= ContactGridView.PageCount; i++)
        {
            ddlCurrentPage.Items.Add(i.ToString());
        }
        ddlCurrentPage.SelectedIndex = ContactGridView.PageIndex;
    }

    /// <summary>
    /// 重新绑定
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.ContactGridView.PageIndex = this.ddlCurrentPage.SelectedIndex;
        GoverResourceDataBind();
    }
    protected void lnkbtnFrist_Click(object sender, EventArgs e)
    {
        this.ContactGridView.PageIndex = 0;
        GoverResourceDataBind();
    }
    protected void lnkbtnPre_Click(object sender, EventArgs e)
    {
        if (this.ContactGridView.PageIndex > 0)
        {
            this.ContactGridView.PageIndex = this.ContactGridView.PageIndex - 1;
            GoverResourceDataBind();
        }
    }
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        if (this.ContactGridView.PageIndex < this.ContactGridView.PageCount)
        {
            this.ContactGridView.PageIndex = this.ContactGridView.PageIndex + 1;
            GoverResourceDataBind();
        }
    }
    protected void lnkbtnLast_Click(object sender, EventArgs e)
    {
        this.ContactGridView.PageIndex = this.ContactGridView.PageCount;
        GoverResourceDataBind();
    }

    protected void ContactGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        this.lblCurrentPage.Text = string.Format("当前第{0}页/总共{1}页", this.ContactGridView.PageIndex + 1, this.ContactGridView.PageCount);

        //遍历所有行设置边框样式
        foreach (TableCell tc in e.Row.Cells)
        {
            tc.Attributes["style"] = "border-color:Black";
        }
        //用索引来取得编号
        if (e.Row.RowIndex != -1)
        {
            int id = ContactGridView.PageIndex * ContactGridView.PageSize + e.Row.RowIndex + 1;
            e.Row.Cells[0].Text = id.ToString();
        }
    }
}