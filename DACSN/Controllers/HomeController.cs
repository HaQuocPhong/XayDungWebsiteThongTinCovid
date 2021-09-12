using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DACSN.Models;

namespace DACSN.Controllers
{
    public class HomeController : Controller
    {
        dbDACSNDataContext data = new dbDACSNDataContext();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TinTuc()
        {
            return View();
        }

        public ActionResult DienBienDich()
        {
            return View();
        }

        public ActionResult Video()
        {
            return View();
        }

        public ActionResult KhuyenCao()
        {
            return View();
        }

        public ActionResult DieuCanBiet()
        {
            return View();
        }


    }
}