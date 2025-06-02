using Inventory_Management_System.Enums;
using System.ComponentModel.DataAnnotations;

namespace Inventory_Management_System.ViewModels;

public class CreateSaleViewModel
{
    public decimal? DiscountAmount { get; set; }
    public PaymentMethod PaymentMethod { get; set; }
    public string Reference { get; set; } = null!;
    public DateTime CreatedDate { get; set; }

    [MinLength(1, ErrorMessage = "At least one product must be added.")]
    public List<SaleItemInput> SaleItems { get; set; } = new();

    public class SaleItemInput
    {
        public int ProductId { get; set; }
        public int QuantitySold { get; set; }
        public decimal UnitPrice { get; set; }
    }
}
