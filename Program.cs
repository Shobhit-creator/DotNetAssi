using WebApi.Data;
using WebApi.Contracts;
using WebApi.Repository;
var builder = WebApplication.CreateBuilder(args);


// Add services to the container.
{
    builder.Services.AddCors();


    builder.Services.AddSingleton<ProductContext>();
    builder.Services.AddScoped<IProductRepository, ProductRepository>();

    builder.Services.AddControllers();
    // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
    builder.Services.AddEndpointsApiExplorer();
    builder.Services.AddSwaggerGen();
}


var app = builder.Build();
app.UseCors(builder =>
{
    builder
    .WithOrigins("http://localhost:3000")
    .AllowAnyMethod()
    .AllowAnyHeader()
    .AllowCredentials();
});



{
    // Configure the HTTP request pipeline.
    if (app.Environment.IsDevelopment())
    {
        app.UseSwagger();
        app.UseSwaggerUI();
    }

    app.UseHttpsRedirection();

    app.UseAuthorization();

    app.MapControllers();
}

app.Run();
