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
        dbDuLieuYTeDataContext db = new dbDuLieuYTeDataContext();
        // GET: Home
        private List<TinTuc> LayTinTucMoi(int count)
        {
            return db.TinTucs.OrderByDescending(a => a.NgayCapNhat).Take(count).ToList();
        }

        private List<Video> LayVideoMoi(int count)
        {
            return db.Videos.OrderByDescending(a => a.NgayCapNhatVideo).Take(count).ToList();
        }

        public ActionResult VideoPartial()
        {
            var ListVideo = LayVideoMoi(4);
            return View(ListVideo);
        }

        public ActionResult TinTucPartial()
        {
            var ListTinTuc = LayTinTucMoi(8);
            return View(ListTinTuc);
        }

        public ActionResult BanTinPartial()
        {
            var ListTinTuc = LayTinTucMoi(3);
            return View(ListTinTuc);
        }

        public ActionResult BanTinMoiNhatPartial()
        {
            var ListTinTuc = LayTinTucMoi(1);
            return View(ListTinTuc);
        }

        public ActionResult Index()
        {        
            return View();
        }

        public ActionResult TinTuc()
        {
            var ListTinTuc = LayTinTucMoi(8);
            return View(ListTinTuc);
        }

        public ActionResult DienBienDich()
        {
            return View();
        }

        public ActionResult Video()
        {
            var ListVideo = LayVideoMoi(8);
            return View(ListVideo);
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