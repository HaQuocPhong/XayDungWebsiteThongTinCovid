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

        public ActionResult VideoPartial()
        {
            var ListVideo = db.BaiViets.Where(s => s.IdDM == 3).OrderBy(s => s.NgayViet).Take(3);
            return View(ListVideo);
        }

        public ActionResult VaccineMoiPartial()
        {
            var ListVideo = db.BaiViets.Where(s => s.IdDM == 4).OrderByDescending(s => s.NgayViet).Take(1);
            return View(ListVideo);
        }

        public ActionResult VaccinePartial()
        {
            var ListVideo = db.BaiViets.Where(s => s.IdDM == 4).OrderBy(s => s.NgayViet).Take(3);
            return View(ListVideo);
        }

        public ActionResult NavPartial()
        {
            return PartialView();
        }

        public ActionResult LoginLogoutPartial()
        {
            return PartialView();
        }

        public ActionResult LoginLogout()
        {
            return PartialView("LoginLogoutPartial");
        }
    }
}