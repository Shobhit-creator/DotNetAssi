using Microsoft.AspNetCore.Mvc;
using WebApi.Contracts;
using WebApi.Params;


namespace WebApi.Controllers
{
    // [Route("[controller]")]
    [ApiController]
    public class ProductsController:ControllerBase{

        private readonly IProductRepository _productRepo;

        public ProductsController(IProductRepository productRepo) => _productRepo = productRepo;

        [HttpGet("/products")]
        [HttpGet("/")]
        public async Task<IActionResult> GetProducts([FromQuery]DefaultParameters defaultParameters){
            var products = await _productRepo.GetProducts(defaultParameters);

            return Ok(products);
        }


        [HttpGet("/products/search")]
        public async Task<IActionResult> GetProductByParams([FromQuery] QueryParameters queryParameters){
            Console.WriteLine(queryParameters.categories);
            var products = await _productRepo.GetProductByParams(queryParameters);
            return Ok(products);
        }
        
    }
}
