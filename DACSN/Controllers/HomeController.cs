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
        dbDuLieuYTeBDDataContext db = new dbDuLieuYTeBDDataContext();
        // GET: Home
        
        //tintuc
       
        public ActionResult TinTucPartial()
        {
            var ListTinTuc = db.BaiViets.Where(s => s.IdDM == 2).OrderByDescending(s => s.NgayViet).Take(3);
            return View(ListTinTuc);
        }

        /*//video
        private List<Video> LayVideoMoi(int count)
        {
            return db.Videos.OrderByDescending(a => a.NgayCapNhatVideo).Take(count).ToList();
        }
        public ActionResult VideoPartial()
        {
            var ListVideo = LayVideoMoi(4);
            return View(ListVideo);
        }

        //vaccine
        private List<Vaccine>LayVaccineMoi(int count)
        {
            return db.Vaccines.OrderByDescending(a => a.NgayCapNhatCD).Take(count).ToList();
        }

        public ActionResult VaccinePartial()
        {
            var ListVaccine = LayVaccineMoi(4);
            return View(ListVaccine);
        }

        */
        
        public ActionResult ChiDaoPartial()
        {
            var ListChiDao = db.BaiViets.Where(s => s.IdDM == 1).OrderByDescending(s => s.NgayViet);
            return View(ListChiDao);
        }
        
        public ActionResult Index()
        {        
            return View();
        }

        public ActionResult BanTinPartial()
        {
            var ListTinTuc = db.BaiViets.Where(s => s.IdDM == 2).OrderByDescending(s => s.NgayViet).Take(4);
            return View(ListTinTuc);
        }

        public ActionResult BanTinMoiNhatPartial()
        {
            var ListTinTuc = db.BaiViets.Where(s => s.IdDM == 2).OrderByDescending(s => s.NgayViet).Take(1);
            return View(ListTinTuc);
        }

        public ActionResult VideoMoiPartial()
        {
            var ListVideo = db.BaiViets.Where(s => s.IdDM == 3).OrderByDescending(s => s.NgayViet).Take(1);
            return View(ListVideo);
        }
        /*public ActionResult TinTuc()
        {
            var ListTinTuc = LayTinTucMoi(8);
            return View(ListTinTuc);
        }
        /*
        

        

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
        }*/


    }
}