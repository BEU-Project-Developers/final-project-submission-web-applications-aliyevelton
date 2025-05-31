using Inventory_Management_System.Contexts;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace Inventory_Management_System.Controllers;

public class ProductController : Controller
{
    private readonly AppDbContext _context;

    public ProductController(AppDbContext context)
    {
        _context = context;
    }

    public IActionResult Index()
    {
        return View();
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



    [Authorize(Roles = "Admin,Manager,Inventory Manager")]
    public IActionResult Update()
    {
        return View();
    }
}
