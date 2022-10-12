namespace WebApi.Params;

public class DefaultParameters{
    public int offset {get; set;}
}

public class QueryParameters:DefaultParameters{
    public string? brands {get; set;}
    public string? categories {get; set;}
    public int min_price {get; set;}

    public int max_price {get; set;}
}
