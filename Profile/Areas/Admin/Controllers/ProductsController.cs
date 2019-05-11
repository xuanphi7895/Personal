using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using Model.DAO;
using CKFinder;

namespace Profile.Areas.Admin.Controllers
{
    public class ProductsController : BaseController
    {
        // GET: Admin/Products
        [HttpGet]
        public ActionResult Index()
        {
            var dao = new ProductsDao();
            var model = dao.ListProducts();
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            var model = new Product();
            model.CreatedDate = DateTime.Now;
            model.ModifiedDate = DateTime.Now;
            model.TopHot = DateTime.Now;
            return View(model);
        }

        [HttpGet]
        public ActionResult Edit(long id)
        {
            var dao =new ProductsDao();
            var model = dao.GetById(id);
            return View(model);
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create(Product products)
        {
            if (ModelState.IsValid)
            {
                var dao = new ProductsDao();
                var id = dao.Insert(products);
                if (id >0)
                {
                    return RedirectToAction("Index","Products");
                }
                else
                {
                    ModelState.AddModelError("","Update not success!");
                }
            }
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit(Product entity)
        {
            if (ModelState.IsValid)
            {
                var dao = new ProductsDao();
                var result = dao.Update(entity);
                if (result)
                {
                    return RedirectToAction("Index", "Products");
                }
                else
                {
                    ModelState.AddModelError("", "Update not success!");
                }
            }
            return View();
        }

        [HttpDelete]
        public ActionResult Delete(long id)
        {
            new ProductsDao().Delete(id);
            return RedirectToAction("Index");
        }
    }
}