using WebApi.Models;
using WebApi.Params;

namespace WebApi.Contracts;

public interface IProductRepository{
    public Task<IEnumerable<Product>> GetProducts(DefaultParameters defaultParameters);

    public Task<IEnumerable<Product>> GetProductByParams(QueryParameters queryParamters);

    public Task<IEnumerable<string>> GetAllBrands();

    public Task<IEnumerable<string>> GetAllCategories();
    
}