using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Assupload : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubit_Click(object sender, EventArgs e)
    { 
        if (FileUpload1.HasFile)
    {
        string fileName = FileUpload1.FileName;
        FileUpload1.PostedFile
            .SaveAs(Server.MapPath("~/Data/") + fileName);
    }

    DataTable dt = new DataTable();
    dt.Columns.Add("File");
    dt.Columns.Add("Size");
    dt.Columns.Add("Type");

    foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
    {
        FileInfo fi = new FileInfo(strfile);
        dt.Rows.Add(fi.Name, fi.Length.ToString(), 
            GetFileTypeByExtension(fi.Extension));
    }

    GridView1.DataSource = dt;
    GridView1.DataBind();
}

private string GetFileTypeByExtension(string fileExtension)
{
    switch (fileExtension.ToLower())
    {
        case ".docx":
        case ".doc":
            return "Microsoft Word Document";
        case ".xlsx":
        case ".xls":
            return "Microsoft Excel Document";
        case ".txt":
            return "Text Document";
        case ".jpg":
        case ".png":
            return "Image";
        default:
            return "Unknown";
    }
}



protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
{
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename="
                + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Data/")
                + e.CommandArgument);
            Response.End();
        }
    }
}
}