using WebApi.Models;
using WebApi.Data;
using WebApi.Contracts;
using WebApi.Params;
using Dapper;


namespace WebApi.Repository;

public class ProductRepository:IProductRepository{

    private readonly ProductContext _context;

    public ProductRepository(ProductContext context) => _context = context;
    public async Task<IEnumerable<Product>> GetProducts(DefaultParameters defaultParameters){
        var query = "select * from product_table, images where product_table.id=images.imageId limit @limit,10";
        
        var parameters = new DynamicParameters();

        parameters.Add("@limit",defaultParameters.limit);

        using(var connection = _context.CreateConnection()){
            // queryAsync came from Dapper;
            var products = await connection.QueryAsync<Product>(query, parameters);
            return products.ToList();
        }
    }

    public async Task<IEnumerable<string>> GetAllBrands(){
            var query = "select distinct(Brand) from product_table";
            using(var connection = _context.CreateConnection()){
                // queryAsync came from Dapper;
                var products = await connection.QueryAsync<string>(query);
                return products.ToList();
           }   
    }


    public async Task<IEnumerable<string>> GetAllCategories(){
        var query = "select distinct(Category) from product_table";
        using(var connection = _context.CreateConnection()){
                // queryAsync came from Dapper;
                var products = await connection.QueryAsync<string>(query);
                return products.ToList();
        }   
    }


    public async Task<IEnumerable<Product>> GetProductByParams(QueryParameters queryParameters){
        // var query = "select * from products where (category in @categories) and (brand in @brands) and (price>=@min_price) and (price<=@max_price)";
        var query = "select * from (select * from product_table where Price>=@min_price and Price<=@max_price) as C join images on C.id=images.imageId where Category in @categories  and Brand in @brands limit @limit,10";
        var parameters = new DynamicParameters();
        using(var connection = _context.CreateConnection()){
            // queryAsync came from Dapper;
            var categories =  await connection.QueryAsync<string>("select distinct(Category) from product_table");
            var brands  = await connection.QueryAsync<string>("select distinct(Brand) from product_table");
            var min_price = await connection.QueryAsync<int>("select min(Price) from product_table");
            var max_price = await connection.QueryAsync<int>("select max(Price) from product_table");
            if(queryParameters.brands!=null){
                parameters.Add("@brands",queryParameters.brands);
            }else{
                parameters.Add("@brands",brands.Select(p =>p).ToArray());
            }
            if(queryParameters.categories!=null){
                parameters.Add("@categories",queryParameters.categories);
            }else{
                parameters.Add("@categories",categories.Select(p =>p).ToArray());
            }
            if(queryParameters.min_price!=0){
                parameters.Add("@min_price",queryParameters.min_price);
            }else{ 
                parameters.Add("@min_price",min_price.Select(p =>p).ToArray()[0]);
            }
            if(queryParameters.max_price!=0){
                
                parameters.Add("@max_price",queryParameters.max_price);
            }else{
                parameters.Add("@max_price",max_price.Select(p =>p).ToArray()[0]);
            }
            parameters.Add("@limit",queryParameters.limit);
            var products = await connection.QueryAsync<Product>(query, parameters);
            return products.ToList();
        }

    }
    
}