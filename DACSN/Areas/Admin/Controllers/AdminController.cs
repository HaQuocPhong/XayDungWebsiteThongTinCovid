using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DACSN.Models;

namespace DACSN.Areas.Admin.Controllers
{
    public class AdminController : BaseController
    {
        dbDuLieuYTeBDDataContext db = new dbDuLieuYTeBDDataContext();
        // GET: Admin/Admin
        public ActionResult Index()
        {
            if (Session["TenDN"] == null)
            {
                return RedirectToAction("FormLuaChon", "LoginDN");
            }
            return View();
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            var sTenDN = collection["UserName"];
            var sMatKhau = collection["Password"];

            TaiKhoan ad = db.TaiKhoans.SingleOrDefault(n => n.TenDN == sTenDN && n.MatKhau == sMatKhau);
            
            if (ad != null)
            {
                Session["TenDN"] = ad;
                SetAlert("Đăng Nhập Thành Công", "success");
                return RedirectToAction("Index", "Admin");
            }
            
            else
            {
                ViewBag.ThongBao = "Tên đăng nhập hoặc mật khẩu không đúng";
                SetAlert("Đăng Nhập không Thành Công", "warning");
                return RedirectToAction("DangNhap", "Admin");
            }
        }

        public ActionResult DangXuat()
        {
            Session.Clear();

            return RedirectToAction("FormLuaChon", "LoginDN");
        }
    }
}