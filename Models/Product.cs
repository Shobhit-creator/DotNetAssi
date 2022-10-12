namespace WebApi.Models;


public class Image{
    public string? images {get; set;}
}

public class Product:Image{
    public int id {get; set; }
    public string title {get; set;}

    public string description {get; set;}

    public int price {get; set;}

    public float discount {get; set;}

    public float rating {get; set;}

    public int stock{get; set;}

    public string brand {get; set;}

    public string category {get; set;}

    public string thumbnail {get; set;}
    
}

