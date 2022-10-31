import { useState, useEffect } from 'react';
import Card from './components/Card';
import { useSelector } from 'react-redux';
import Category from './components/Category';
import Brand from './components/Brand';
import Price from './components/Price';

import './index.css';

function App() {

  const categories = useSelector(state=>state.product.categories);
  const brands = useSelector(state=>state.product.brands);
  const min_price = useSelector(state=>state.product.min_price);
  const max_price = useSelector(state=>state.product.max_price);
  const [products, setProducts] = useState([]);
  const [offset, setOffset] = useState(0);


  useEffect(()=>{
    fetch("https://localhost:7096/products/")
    .then((res) => res.json())
    .then(
      (result) => {
        setProducts(result);
      },
    );
  },[])

  useEffect(() => {
    var query = "https://localhost:7096/products/search?";
    if(categories.length!==0){
        query += "&categories=";
        categories.forEach(item => {
          query+=`${item}|`;
        });
        query = query.slice(0, query.length-1);
    }
    if(brands.length!==0){
      query += "&brands=";
      brands.forEach(item => {
        query+=`${item}|`;
      });
      query = query.slice(0, query.length-1);
  }
    if(min_price!==10){
        query += `&min_price=${min_price}`;
        setOffset(0);
    }
    if(max_price!==1780){
        query += `&max_price=${max_price}`;
        setOffset(0);
    }
    if(offset!==0){
        query += `&offset=${offset}`;
    }
    console.log(query);
    fetch(query).then((res)=>res.json()).then((result)=>{if(result.length===0){setOffset(0);} setProducts(result)})
  },[categories,brands,min_price,max_price,offset]);

  return (
    <>
      <div className='header-wrapper'>
           <h1>Let's Shop</h1>
      </div>
      <div className="row">
        <div className="container-fluid mx-4 mt-5">
            <div className="row">
                <div className="col-sm-4 fixed-top" style={{marginTop: "10%", marginLeft: "5%"}}>
                <div className="row">
                  <div className="col-md-5">
                    <Category/>
                  </div>
                  <div className="col-md-5">
                    <Brand />
                  </div>
                </div>
                <div className="row">
                  <div className="col-md-10 text-center" style={{marginTop: "60%"}}>
                      <Price />
                  </div>
                </div>
              </div>
              <div className="col-sm-4" style={{marginLeft: "40%", marginTop: "5%"}}>
              {
                products.map((product)=>{
                  return(<Card product={product} />)
                })
              }
              <div className='row'> 
                <button className="col-md-6 btn btn-info" onClick={(e) => setOffset(offset>0?offset-10:0)}>Prev</button>
                <button className="col-md-6 btn btn-info" onClick={(e) => setOffset(offset+10)}>Next</button>
              </div>
              </div>
            </div>
        </div>
      </div>
    </>
  );
}

export default App;

/*
      <div className="container-fluid mx-2">
        <div className="row mt-5 mx-2">
          <div className="col-md-2">
            <Category />
          </div>
          <div className="col-md-2">
            <Brand />
          </div>
        </div>
        <div className='row mt-5 mx-2'>
          <div className="col-md-5">
              <Price />
          </div>
        </div>
      </div>
      <div className="container-fluid mx-2">
        <div className="row mt-5 mx-2">
          <div className="col-md-7">
            <div className="row">
            {products.map((product, i)=>{
              return(
                <>
                <div className="col-md-5 mb-4" key={i}>
                   <Card product={product}/>
                </div>
                </>
              )})
            }
            </div>
            <div className='row'> 
              <button className="col-md-5 btn btn-info" onClick={(e) => setLimit(limit>0?limit-10:0)}>Prev</button>
              <button className="col-md-5 btn btn-info" onClick={(e) => setLimit(limit+10)}>Next</button>
            </div>
          </div>
        </div>
      </div>
*/


// import { useState, useEffect} from 'react';
// import Card from './components/Card';
// import { useSelector } from 'react-redux';
// import {brandOptions} from './data/brandOptions';
// import categoryOptions  from './data/categoryOptions';
// import './index.css';

// function App() {

//   // const [categories, setCategories] = useState([]);
//   const [brands, setBrands] = useState([]);
//   const [products, setProducts] = useState([]);
//   const [min_price, SetMinPrice] = useState(0);
//   const [max_price, SetMaxPrice] = useState(0);
//   const [limit, setLimit] = useState(0);
//   // const brandRef =  useRef(null);


//   useEffect(()=>{
//     fetch("https://localhost:7096/products/")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         setProducts(result);
//       },
//     );
//   },[])

//   useEffect(() => {
//     var query = "https://localhost:7096/products/search?";
//     // categories.map((item)=>query+`categories=${item}&`);
//     brands.map((item)=>query+`brands=${item}&`);
//     if(min_price!=0){
//         query += `min_price=${min_price}&`;
//         setLimit(0);
//     }
//     if(max_price!=0){
//         query += `max_price=${max_price}&`;
//         setLimit(0);
//     }
//     query += `limit=${limit}&`;
//     if(query[query.length-1]==='&')
//     query = query.slice(0, query.length-1);
//     console.log(query);
//     fetch(query).then((res)=>res.json()).then((result)=>{ if(limit>0 && result.length===0){setLimit(0);}else{setProducts(result)}})
//   },[brands,min_price,max_price,limit]);

//   const handleBrand = (e)=>{
//      setBrands([...brands, e.target.value])
//   }


//   return (
//     <div className='App'>
//         <div className='header-wrapper'>
//           <div>
//           {
//             brandOptions.forEach(element => {
//               <div>
//                   <label>{element}</label>
//                   <input type="checkbox" value={element} name={element} onChange={(e)=>handleBrand(e)}></input>
//               </div>
//             })
//           }
//           </div>
//           {/* <label>Minimum Price:</label>
//           <input type="text" value={min_price} onChange={(e)=>SetMinPrice(e.target.value)}></input>
//           <label>Maximum Price:</label>
//           <input type="text" value={max_price} onChange={(e)=>SetMaxPrice(e.target.value)}></input> */}
//         </div>
//         <div className="card-wrapper">
//             {products.map((product)=><Card product={product}/>)}
//         </div>
//         <div className='button-wrapper'>
//             <button className="button-1" onClick={(e) => setLimit(limit>=10?limit-10:0)}>Prev</button>
//             <button className="button-1" onClick={(e) => setLimit(limit+10)}>Next</button>
//         </div>
//     </div>
//   );
// }

// export default App;


















// import { useState, useEffect } from 'react';
// import Card from './components/Card';
// import './index.css';

// function App() {

//   const [error, setError] = useState(null);
//   const [loaded, setLoaded] = useState(false);
//   const [categories, setCategory] = useState([]);
//   const [brands, setBrand] = useState([]);
//   const [products, setProducts] = useState([]);
//   const [min_price, SetMinPrice] = useState(0);
//   const [max_price, SetMaxPrice] = useState(0);
//   const [limit, setLimit] = useState(0);

//   var defaultCategories = [];
//   var defaultBrands = [];

//   useEffect(()=>{
//     fetch("https://localhost:7096/products/")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         setProducts(result);
//       },
//     );
//     fetch("https://localhost:7096/products/categories")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         defaultCategories = result;
//       },
//     );
//     fetch("https://localhost:7096/products/brands")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         defaultBrands = result;
//       },
//     );
//   },[])

//   useEffect(() => {
//     var query = "https://localhost:7096/products/search?";
//     categories.map((item)=>query+`&categories=${item}`);
//     brands.map((item)=>query+`&brands=${item}`);
//     if(min_price!=0){
//         query += `&min_price=${min_price}`;
//         setLimit(0);
//     }
//     if(max_price!=0){
//         query += `&max_price=${max_price}`;
//         setLimit(0);
//     }
//     if(limit!=0){
//         query += `&limit=${limit}`;
//     }
//     fetch(query).then((res)=>res.json()).then((result)=>{ if(result.length===0){setLimit(0);}else{setProducts(result)}})
//   },[categories,brands,min_price,max_price,limit]);

//   const handleCategory = (e)=>{
//     if(categories.contains(e.target.value)){
//         categories.remove(e.target.value);
//     }else{
//         categories.add(e.target.value);
//     }
//     setLimit(0);
//     setCategory(categories);
//   }

//   const handleBrand = (e)=>{
//     if(brands.contains(e.target.value)){
//         brands.remove(e.target.value);
//     }else{
//         brands.add(e.target.value);
//     }
//     setLimit(0);
//     setBrand(brands);
//   }
//   return (
//     <div className='App'>
//        <select id="example-multiple-selected" multiple="multiple">
//           <option value="1">Option 1</option>
//           <option value="2">Option 2</option>
//           <option value="3">Option 3</option>
//           <option value="4">Option 4</option>
//           <option value="5">Option 5</option>
//           <option value="6">Option 6</option>
//        </select>
//         <div className="card-wrapper">
//             {products.map((product)=><Card product={product}/>)}
//         </div>
//         <div className='button-wrapper'>
//             <button className="button-1" onClick={(e) => setLimit(limit>0?limit-10:0)}>Prev</button>
//             <button className="button-1" onClick={(e) => setLimit(limit+10)}>Next</button>
//         </div>
//     </div>
//   );
// }

// export default App;



















// import { useState, useEffect } from 'react';
// import Card from './components/Card';
// import './index.css';

// function App() {

//   const [error, setError] = useState(null);
//   const [loaded, setLoaded] = useState(false);
//   const [categories, setCategory] = useState([]);
//   const [brands, setBrand] = useState([]);
//   const [products, setProducts] = useState([]);
//   const [min_price, SetMinPrice] = useState(0);
//   const [max_price, SetMaxPrice] = useState(0);
//   const [limit, setLimit] = useState(0);

//   var defaultCategories = [];
//   var defaultBrands = [];

//   useEffect(()=>{
//     fetch("https://localhost:7096/products/")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         setProducts(result);
//       },
//     );
//     fetch("https://localhost:7096/products/categories")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         defaultCategories = result;
//       },
//     );
//     fetch("https://localhost:7096/products/brands")
//     .then((res) => res.json())
//     .then(
//       (result) => {
//         defaultBrands = result;
//       },
//     );
//   },[])

//   useEffect(() => {
//     var query = "https://localhost:7096/products/search?";
//     categories.map((item)=>query+`&categories=${item}`);
//     brands.map((item)=>query+`&brands=${item}`);
//     if(min_price!=0){
//         query += `&min_price=${min_price}`;
//         setLimit(0);
//     }
//     if(max_price!=0){
//         query += `&max_price=${max_price}`;
//         setLimit(0);
//     }
//     if(limit!=0){
//         query += `&limit=${limit}`;
//     }
//     fetch(query).then((res)=>res.json()).then((result)=>{ if(result.length===0){setLimit(0);}else{setProducts(result)}})
//   },[categories,brands,min_price,max_price,limit]);

//   const handleCategory = (e)=>{
//     if(categories.contains(e.target.value)){
//         categories.remove(e.target.value);
//     }else{
//         categories.add(e.target.value);
//     }
//     setLimit(0);
//     setCategory(categories);
//   }

//   const handleBrand = (e)=>{
//     if(brands.contains(e.target.value)){
//         brands.remove(e.target.value);
//     }else{
//         brands.add(e.target.value);
//     }
//     setLimit(0);
//     setBrand(brands);
//   }
//   return (
//     <div className='App'>
//        <select id="example-multiple-selected" multiple="multiple">
//           <option value="1">Option 1</option>
//           <option value="2">Option 2</option>
//           <option value="3">Option 3</option>
//           <option value="4">Option 4</option>
//           <option value="5">Option 5</option>
//           <option value="6">Option 6</option>
//        </select>
//         <div className="card-wrapper">
//             {products.map((product)=><Card product={product}/>)}
//         </div>
//         <div className='button-wrapper'>
//             <button className="button-1" onClick={(e) => setLimit(limit>0?limit-10:0)}>Prev</button>
//             <button className="button-1" onClick={(e) => setLimit(limit+10)}>Next</button>
//         </div>
//     </div>
//   );
// }

// export default App;


    // <div className='App'>
    // <div className='header-wrapper'>
    //   <Brand />
    //   <Category />
    //   <Price />
    // </div>
    // <div>
    //     <div className="card-wrapper">
    //         {products.map((product)=><Card product={product}/>)}
    //     </div>
    //     <div className='button-wrapper'>
    //         <button className="button-1" onClick={(e) => setLimit(limit>0?limit-10:0)}>Prev</button>
    //         <button className="button-1" onClick={(e) => setLimit(limit+10)}>Next</button>
    //     </div>
    // </div>
    // </div>