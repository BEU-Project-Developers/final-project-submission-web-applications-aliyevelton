using System.ComponentModel.DataAnnotations;

namespace Inventory_Management_System.ViewModels;

public class ProductCreateViewModel
{
    [Required]
    public string Name { get; set; } = null!;

    [Required]
    public string Description { get; set; } = null!;

    [Required]
    [Range(0, double.MaxValue)]
    public decimal Price { get; set; }

    [Range(0, double.MaxValue)]
    public decimal DiscountedPrice { get; set; }

    [Range(0, double.MaxValue)]
    public decimal OldPrice { get; set; }

    [Required]
    public int CategoryId { get; set; }

    [Required]
    public int BrandId { get; set; }

    [Required]
    [Range(0, int.MaxValue)]
    public int Quantity { get; set; }

    public bool IsActive { get; set; }

    [Display(Name = "Product Images")]
    public List<IFormFile>? ImageFiles { get; set; }
}
