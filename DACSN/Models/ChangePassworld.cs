using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DACSN.Models
{
    public class ChangePassworld
    {

        [Required(ErrorMessage = "Mật Khẩu Hiện Tại Chưa Được Nhập")]
        [DataType(DataType.Password)]
        [Display(Name = "CurrentPassword")]
        public string CurrentPassword
        {
            get; set;
        }

        [Required(ErrorMessage = "Mật Khẩu Mới Chưa Được Nhập")]
        [DataType(DataType.Password)]
        [Display(Name = "New Password")]
        public string NewPassword
        {
            get; set;
        }

        [Required(ErrorMessage = "Hãy Nhập Lại Mật Khẩu Mới")]
        [DataType(DataType.Password)]
        [Display(Name = "ConfirmNewPassword")]
        [Compare("NewPassword", ErrorMessage = "Mật khẩu mới và mật khẩu xác nhận không khớp.")]
        public string ConfirmNewPassword 
        { 
            get; set; 
        }
    }
}