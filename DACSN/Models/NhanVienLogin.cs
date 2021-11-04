using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DACSN.Models
{
    public class NhanVienLogin
    {
        [Display(Name ="Email")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="Email không được để trống")]
        public string Email
        {
            get; set;
        }

        [Required(AllowEmptyStrings =false, ErrorMessage ="Mật Khẩu không chính xác")]
        [DataType(DataType.Password)]
        public string MatKhauNV
        {
            get; set;
        }

        [Display(Name ="Remember me")]
        public bool RememberMe
        {
            get; set;
        }
    }
}