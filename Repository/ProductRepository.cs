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
        var query1 = "select * from product, images where product.id=images.product_id limit @offset,10";
        var query2 = "select img.product_id, json_arrayagg(img.image) as images from images img inner join product p on img.product_id=p.id group by  img.product_id limit @offset,10";
        var parameters = new DynamicParameters();

        parameters.Add("@offset",defaultParameters.offset);

        using(var connection = _context.CreateConnection()){
            // queryAsync came from Dapper;
            IEnumerable<Product> products = await connection.QueryAsync<Product>(query1, parameters);
            IEnumerable<Image> images =  await connection.QueryAsync<Image>(query2,parameters);
            for(int i=0; i<products.Count(); i++){
                products.ElementAt(i).images = images.ElementAt(i).images;
            }
            return products.ToList();
        }
    }

    public async Task<IEnumerable<string>> GetAllBrands(){
            var query = "select distinct(Brand) from product";
            using(var connection = _context.CreateConnection()){
                // queryAsync came from Dapper;
                var products = await connection.QueryAsync<string>(query);
                return products.ToList();
           }   
    }


    public async Task<IEnumerable<string>> GetAllCategories(){
        var query = "select distinct(Category) from product";
        using(var connection = _context.CreateConnection()){
                // queryAsync came from Dapper;
                var products = await connection.QueryAsync<string>(query);
                return products.ToList();
        }   
    }


    public async Task<IEnumerable<Product>> GetProductByParams(QueryParameters queryParameters){
        var query1 = "select * from product where (category in @categories) and (brand in @brands) and (price>=@min_price) and (price<=@max_price) limit @offset,10";
        var query2 = "select img.product_id, json_arrayagg(img.image) as images from images img inner join product p on img.product_id=p.id  where (category in @categories) and (brand in @brands) and (price>=@min_price) and (price<=@max_price)  group by img.product_id limit @offset,10;";
        var parameters = new DynamicParameters();
        using(var connection = _context.CreateConnection()){
            // queryAsync came from Dapper;
            var categories =  await connection.QueryAsync<string>("select distinct(Category) from product");
            var brands  = await connection.QueryAsync<string>("select distinct(Brand) from product");
            var min_price = await connection.QueryAsync<int>("select min(Price) from product");
            var max_price = await connection.QueryAsync<int>("select max(Price) from product");
            if(queryParameters.brands!=null){
                parameters.Add("@brands",queryParameters.brands.Split("|"));
            }else{
                parameters.Add("@brands",brands.Select(p =>p).ToArray());
            }
            if(queryParameters.categories!=null){
                parameters.Add("@categories",queryParameters.categories.Split("|"));
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
            parameters.Add("@offset",queryParameters.offset);
            IEnumerable<Product> products = await connection.QueryAsync<Product>(query1, parameters);
            IEnumerable<Image> images =  await connection.QueryAsync<Image>(query2,parameters);
            for(int i=0; i<products.Count(); i++){
                products.ElementAt(i).images = images.ElementAt(i).images;

            }
            return products.ToList();
        }

    }
    
}
