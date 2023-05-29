using FastReport;
using FastReport.Data;
using FastReport.Utils;
using FastReport.Web;
using Microsoft.AspNetCore.Mvc;
using System.Data;

using FastReport.Export.Pdf;

using FastReport.Web;
using FastReport;
using FastReport.Table;
using System.Data;
using FastReport.Data;
using System.Drawing;
using FastReport.Utils;
using FastReport.Export.Pdf;
using FastReport.Export.Dbf;

namespace report_web_application_code.Controllers
{
    public class InvoiceController : Controller
    {
        public IActionResult Index()
        {

            //Creating a connection to PostgreSQL

            RegisteredObjects.AddConnection(typeof(PostgresDataConnection));

            var report = new WebReport(); // create object
            var data = new DataSet();
            report.Report.RegisterData(data); // data binding

            report.Report.Load("C:/Projects/FastReport/report-web-application-code/report-web-application-code/Reports/Invoice.frx"); // load the report from the file

            ViewBag.WebReport = report; // send object to the View
            return View();

        }

        public IActionResult Print()
        {

            //Creating a connection to PostgreSQL

            RegisteredObjects.AddConnection(typeof(PostgresDataConnection));

            Report report = new Report();

            report.LoadPrepared(@"C:/Projects/FastReport/report-web-application-code/report-web-application-code/Reports/Invoice.frx");

            /*    void Show();*/
            /*report.ShowPrepared();*/

            ViewBag.WebReport = report;
            return View();

            /* report.PrintSettings.ShowDialog = false;*/

          /*  report.Toolbar.PrintInPdf();*/



        }

        public void Print2()
        {
            WebReport webReport = new WebReport();
            System.Data.DataSet dataSet = new System.Data.DataSet();
            dataSet.ReadXml("C://Program Files (x86)//FastReports//FastReport.Net//Demos//Reports//nwind.xml");
            webReport.Report.RegisterData(dataSet, "NorthWind");
            webReport.Report.LoadPrepared("C://Program Files (x86)//FastReports//FastReport.Net//Demos//Reports//Simple List.frx");
            webReport.EmbedPictures = true;

        }

        public void Print3()
        {
            WebReport webReport = new WebReport();
            System.Data.DataSet dataSet = new System.Data.DataSet();
            dataSet.ReadXml("C://Program Files (x86)//FastReports//FastReport.Net//Demos//Reports//nwind.xml");
            webReport.Report.RegisterData(dataSet, "NorthWind");
            webReport.Report.Load("C://Program Files (x86)//FastReports//FastReport.Net//Demos//Reports//Simple List.frx");
            webReport.EmbedPictures = true;
         /*   webReport.PrintHtml();

            webReport.Print();*/
        }

        public IActionResult Action()
        {
            var i = GetFile();

            ViewBag.WebReport = i;
            return View();
        }

        public FileResult GetFile()
        {
            //Creating a connection to PostgreSQL

            RegisteredObjects.AddConnection(typeof(PostgresDataConnection));

            WebReport webReport = new WebReport();
            // bind data
            System.Data.DataSet dataSet = new System.Data.DataSet();
     /*       dataSet.ReadXml(report_path + "nwind.xml");*/
            webReport.Report.RegisterData(dataSet, "NorthWind");
            // load report
         /*   webReport.ReportFile = this.Server.MapPath("~/App_Data/report.frx");*/
            webReport.Report.Load("C:/Projects/FastReport/report-web-application-code/report-web-application-code/Reports/Invoice.frx"); // load the report from the file

            // prepare report
            webReport.Report.Prepare();
            // save file in stream
            Stream stream = new MemoryStream();
            webReport.Report.Export(new PDFExport(), stream);
            stream.Position = 0;
            // return stream in browser
            return File(stream, "application/zip", "report.pdf");
        }


    }
}
