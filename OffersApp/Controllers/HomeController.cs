using OffersApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OffersApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            OffersTestingEntities entities = new OffersTestingEntities();
            var entity = entities.OffersInventories.First();
            return View(entity);
        }

        public ActionResult OffersList() 
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}