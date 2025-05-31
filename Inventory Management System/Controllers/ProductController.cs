using Inventory_Management_System.Contexts;
using Inventory_Management_System.Models;
using Inventory_Management_System.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace Inventory_Management_System.Controllers;

public class ProductController : Controller
{
    private readonly AppDbContext _context;
    private readonly IWebHostEnvironment _webHostEnvironment;

    public ProductController(AppDbContext context, IWebHostEnvironment webHostEnvironment)
    {
        _context = context;
        _webHostEnvironment = webHostEnvironment;
    }

    public async Task<IActionResult> Index()
    {
        var products = await _context.Products
            .Include(p => p.Category)
            .Include(p => p.Brand)
            .Include(p => p.ProductImages)
            .ToListAsync();

        return View(products);
    }


    public IActionResult Details()
    {
        return View();
    }

    [Authorize(Roles = "Admin,Manager,Inventory Manager")]
    public IActionResult Create()
    {
        ViewBag.Categories = new SelectList(_context.Categories.Where(c => !c.IsDeleted), "Id", "Name");
        ViewBag.Brands = new SelectList(_context.Brands.Where(b => !b.IsDeleted), "Id", "Name");
        return View();
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    [Authorize(Roles = "Admin,Manager,Inventory Manager")]
    public async Task<IActionResult> Create(ProductCreateViewModel model)
    {
        ViewBag.Categories = new SelectList(_context.Categories.Where(c => !c.IsDeleted), "Id", "Name");
        ViewBag.Brands = new SelectList(_context.Brands.Where(b => !b.IsDeleted), "Id", "Name");

        if (!ModelState.IsValid)
            return View(model);

        var product = new Product
        {
            Name = model.Name,
            Description = model.Description,
            Price = model.Price,
            DiscountedPrice = model.DiscountedPrice,
            SKU = model.SKU,
            Quantity = model.Quantity,
            CategoryId = model.CategoryId,
            BrandId = model.BrandId,
            IsActive = true,
            IsDeleted = false,
            CreatedDate = DateTime.UtcNow,
            UpdatedDate = DateTime.UtcNow,
            ProductImages = new List<ProductImage>()
        };

        if (model.ImageFiles != null)
        {
            foreach (var file in model.ImageFiles)
            {
                if (file.Length > 0)
                {
                    var fileName = Guid.NewGuid() + Path.GetExtension(file.FileName);
                    var savePath = Path.Combine(_webHostEnvironment.WebRootPath, "assets/img/product", fileName);

                    using (var stream = new FileStream(savePath, FileMode.Create))
                    {
                        await file.CopyToAsync(stream);
                    }

                    product.ProductImages.Add(new ProductImage
                    {
                        Image = fileName,
                        CreatedDate = DateTime.UtcNow 
                    });
                }
            }

        }

        _context.Products.Add(product);
        await _context.SaveChangesAsync();

        return RedirectToAction("Index");
    }

    [Authorize(Roles = "Admin,Manager,Inventory Manager")]
    [HttpGet]
    public async Task<IActionResult> Update(int id)
    {
        var product = await _context.Products
            .Include(p => p.ProductImages)
            .FirstOrDefaultAsync(p => p.Id == id);

        if (product == null) return NotFound();

        var model = new ProductUpdateViewModel
        {
            Id = product.Id,
            Name = product.Name,
            Description = product.Description,
            Price = product.Price,
            DiscountedPrice = product.DiscountedPrice,
            SKU = product.SKU,
            Quantity = product.Quantity,
            CategoryId = product.CategoryId,
            BrandId = product.BrandId,
            IsActive = product.IsActive
        };

        ViewBag.Categories = new SelectList(await _context.Categories.Where(c => !c.IsDeleted).ToListAsync(), "Id", "Name", model.CategoryId);
        ViewBag.Brands = new SelectList(await _context.Brands.Where(b => !b.IsDeleted).ToListAsync(), "Id", "Name", model.BrandId);

        return View(model);
    }



    [HttpPost]
    [Authorize(Roles = "Admin,Manager,Inventory Manager")]
    [ValidateAntiForgeryToken]
    public async Task<IActionResult> Update(ProductUpdateViewModel model)
    {
        var product = await _context.Products
            .Include(p => p.ProductImages)
            .FirstOrDefaultAsync(p => p.Id == model.Id);

        if (product == null) return NotFound();

        if (!ModelState.IsValid)
        {
            ViewBag.Categories = new SelectList(await _context.Categories.ToListAsync(), "Id", "Name", model.CategoryId);
            ViewBag.Brands = new SelectList(await _context.Brands.ToListAsync(), "Id", "Name", model.BrandId);
            return View(model); 
        }

        product.Name = model.Name;
        product.Description = model.Description;
        product.Price = model.Price;
        product.DiscountedPrice = model.DiscountedPrice;
        product.SKU = model.SKU;
        product.Quantity = model.Quantity;
        product.CategoryId = model.CategoryId;
        product.BrandId = model.BrandId;
        product.IsActive = model.IsActive;
        product.UpdatedDate = DateTime.Now;

        if (model.ProductImages != null && model.ProductImages.Any())
        {
            foreach (var file in model.ProductImages)
            {
                if (file.Length > 0)
                {
                    var fileName = Guid.NewGuid() + Path.GetExtension(file.FileName);
                    var filePath = Path.Combine(_webHostEnvironment.WebRootPath, "assets/img/product", fileName);

                    Directory.CreateDirectory(Path.GetDirectoryName(filePath)!);

                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        await file.CopyToAsync(stream);
                    }

                    product.ProductImages ??= new List<ProductImage>();
                    product.ProductImages.Add(new ProductImage
                    {
                        Image = fileName,
                        CreatedDate = DateTime.Now
                    });
                }
            }
        }

        await _context.SaveChangesAsync();
        return RedirectToAction("Index");
    }

    [HttpPost]
    public async Task<IActionResult> DeleteImage(int imageId)
    {
        var image = await _context.ProductImages.FindAsync(imageId);
        if (image == null) return NotFound();

        var fullPath = Path.Combine(_webHostEnvironment.WebRootPath, "assets", "img", "product", image.Image);
        if (System.IO.File.Exists(fullPath))
            System.IO.File.Delete(fullPath);

        _context.ProductImages.Remove(image);
        await _context.SaveChangesAsync();

        return Ok();
    }
}
