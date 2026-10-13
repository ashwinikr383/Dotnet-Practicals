
using Microsoft.AspNetCore.Mvc;
using FeedbackManagement.Models;

namespace FeedbackManagement.Controllers
{
    public class FeedbackController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View(new Feedback());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(Feedback feedback)
        {
            if (ModelState.IsValid)
            {
                ViewBag.Message = "Feedback submitted successfully!";
                return View(new Feedback());
            }

            return View(feedback);
        }
    }
}
