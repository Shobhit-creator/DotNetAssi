using MySql.Data.MySqlClient;
using System.Data;

namespace WebApi.Data;

public class ProductContext{
    private readonly IConfiguration _configuration;
    private readonly string _connectionString;

    public ProductContext(IConfiguration configuration){
        _configuration = configuration;
        _connectionString = _configuration.GetConnectionString("SqlConnection");
    }
    public IDbConnection CreateConnection () => new MySqlConnection(_connectionString);
}