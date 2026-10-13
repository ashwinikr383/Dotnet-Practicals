using Microsoft.AspNetCore.Mvc;
using ProductCatalog.Models;

namespace ProductCatalog.Controllers
{
    public class ProductController : Controller
    {
        // Temporary product list
        private static List<Product> products = new List<Product>
        {
            new Product
            {
                Id = 1,
                Name = "Laptop",
                Description = "HP Laptop",
                Price = 55000,
                Category = "Electronics"
            },

            new Product
            {
                Id = 2,
                Name = "Mobile",
                Description = "Smartphone",
                Price = 25000,
                Category = "Electronics"
            },

            new Product
            {
                Id = 3,
                Name = "Headphones",
                Description = "Wireless Headphones",
                Price = 3000,
                Category = "Accessories"
            }
        };

        // Display all products
        public IActionResult Index()
        {
            return View(products);
        }

        // Display Add Product form
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        // Add new product
        [HttpPost]
        public IActionResult Create(Product product)
        {
            product.Id = products.Count + 1;

            products.Add(product);

            return RedirectToAction("Index");
        }

        // Display Edit Product form
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var product = products.FirstOrDefault(p => p.Id == id);

            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // Update Product
        [HttpPost]
        public IActionResult Edit(Product product)
        {
            var existingProduct = products.FirstOrDefault(p => p.Id == product.Id);

            if (existingProduct == null)
            {
                return NotFound();
            }

            existingProduct.Name = product.Name;
            existingProduct.Description = product.Description;
            existingProduct.Price = product.Price;
            existingProduct.Category = product.Category;

            return RedirectToAction("Index");
        }

        // Delete Product
        [HttpGet]
        public IActionResult Delete(int id)
        {
            var product = products.FirstOrDefault(p => p.Id == id);

            if (product == null)
            {
                return NotFound();
            }

            products.Remove(product);

            return RedirectToAction("Index");
        }
    }
}