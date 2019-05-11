using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Profile.Controllers
{
    public class HomeController : Controller
    {
        //[HttpGet]
        //public ActionResult Index1()
        //{
        //    return View();
        //}
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

    }
}   