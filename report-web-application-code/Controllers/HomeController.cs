using FastReport.Data;
using FastReport.Table;
using FastReport.Web;
using FastReport;
using Microsoft.AspNetCore.Mvc;
using report_web_application_code.Models;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using FastReport.Utils;

namespace report_web_application_code.Controllers
{
    public class HomeController : Controller
    {
       
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            //Create a web report object 
            WebReport report = new WebReport();

            // Create a web page object
            ReportPage page = new ReportPage();
            page.Name = "Page1";

            //Add a page to the report 
            report.Report.Pages.Add(page);

            //Create a data source
            DataSet ds = new DataSet();
            ds.ReadXml("C:/Projects/FastReport/report-web-application-code/report-web-application-code/Reports/nwind.xml");

            //Register the data source in the report
            report.Report.RegisterData(ds);

            //Include the table in the report
            report.Report.GetDataSource("Products").Enabled = true;

            //Create a data band
            DataBand dataBand = new DataBand();
            dataBand.Name = "DataBand";

            //Get the table from the report data source
            DataSourceBase data = report.Report.GetDataSource("Products");
            // Initialize the data source 
            data.Init();
            //And we get the first row of data
            data.First();

            //Add a data band to the page 
            page.Bands.Add(dataBand);

            //Create a Table object
            TableObject table = new TableObject();
            table.Name = "Table1";
            // Set the number of rows - the number of rows in the source + title
            table.RowCount = data.RowCount + 1;
            // Set the number of columns
            table.ColumnCount = 2;

            // We set the autosize of the first column where the names of the products will be displayed
            table.Columns[0].AutoSize = true;
            // Set the titles in the first row of the table
            table[0, 0].Text = "Product Name";
            table[0, 0].Border.Lines = BorderLines.All;
            table[1, 0].Text = "Unit Price";
            table[1, 0].Border.Lines = BorderLines.All;

            int i = 1;
            //Loop through all rows in the data source
            while (data.HasMoreRows)
            {
                //Display product names
                table[0, i].Text = data["ProductName"].ToString();
                table[0, i].Border.Lines = BorderLines.All;
                //Display prices
                table[1, i].Text = data["UnitPrice"].ToString();
                table[1, i].Border.Lines = BorderLines.All;

                //Create a picture object
                PictureObject picture = new PictureObject();
                picture.Bounds = new RectangleF(40, 0, Units.Centimeters * 0.5f, Units.Centimeters * 0.5f);
                picture.CreateUniqueName();
                //We choose a picture to display in the table cell depending on the value of the price
                if ((decimal)data["UnitPrice"] < 20)
                {
                    picture.Image = Image.FromFile("C:/Projects/FastReport/report-web-application-code/report-web-application-code/wwwroot/images/arrow.png");
                }
                else
                {
                    picture.Image = Image.FromFile("C:/Projects/FastReport/report-web-application-code/report-web-application-code/wwwroot/images/star.png");
                }

                picture.LoadImage();
                //Load the image into the object
                picture.Parent = table[1, i];
                //Assign the parent object for the picture - the table cell 
                i++;
                data.Next();
                //Take the next record from the source
            }

            dataBand.Objects.Add(table);
            //Add the table object to the report page

            ViewBag.WebReport = report;
            //Return the report to the view
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }      

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}