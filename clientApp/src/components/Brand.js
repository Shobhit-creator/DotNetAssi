import React, { useEffect, useState } from "react";
import {useDispatch} from 'react-redux';
import {fetchBrand} from '../actions/actions';
import { default as ReactSelect } from "react-select";
import "../index.css";
import { components } from "react-select";

const Option = (props) => {

    return (
      <div>
        <components.Option {...props}>
          <input
            type="checkbox"
            checked={props.isSelected}
            value={props.value}
            onChange={()=>null}
          />{" "}
          <label>{props.label}</label>
        </components.Option>
      </div>
    );
  };
  
  const Brand = () => {

    const [optionSelected, setOptionSelected] = useState(null);
    const [brands, setBrands] = useState([]);
    const dispatch = useDispatch();

    useEffect(()=>{
      fetch("https://localhost:7096/products/brands")
      .then((res)=>res.json())
      .then((res)=>setBrands(res));
    },[])


  
    const handleChange = (e) => {
      setOptionSelected(e);
      const brandsSelected = [];
      e.forEach((obj) => {
        brandsSelected.push(obj.value);
      });
      dispatch(fetchBrand(brandsSelected));
    };

    let brandOptions = brands.map(function (item) {
      return { value: item, label: item };
    })
    return (
        <>
        <span class="label label-default">Brand: </span>
        <span
          style={{width: "100%"}}
          className="d-inline-block"
          data-toggle="popover"
          data-trigger="focus"
          data-content="Please selecet account(s)"
        >
          <ReactSelect
            options={brands.length===0?[{}]:brandOptions}
            isMulti
            closeMenuOnSelect={false}
            hideSelectedOptions={false}
            components={{
              Option
            }}
            onChange={handleChange}
            allowSelectAll={true}
            value={optionSelected}
          />
        </span>
      </>
      );
  }

export default Brand;






//   // const Brand = ()=>{
//   //   const [selected, setSelected] = useState('');
//   //   const [brandOptions, setBrandOptions] = useState([]);
//   //   const brands = useSelector(state=>state.product.brands);
//   //   const dispatch = useDispatch();
  
//   //   const handleChange = event => {
//   //     setSelected(event.target.value);
//   //     dispatch(fetchBrand(brands,event.target.value));
//   //   };
  
  
//   //     useEffect(()=>{
//   //       fetch("https://localhost:7096/products/brands")
//   //       .then((res)=>res.json())
//   //       .then((res)=>setBrandOptions(res));
//   //     },[])
  
//   //   return (
//   //     <div>
//   //       <select value={selected} onChange={handleChange}>
//   //         {brandOptions.map(brand => (
//   //           <option key={brand} value={brand}>
//   //             {brand}
//   //           </option>
//   //         ))}
//   //       </select>
//   //     </div>
//   //   );
//   // };
  
//   // export default Brand;
  















//   // const Brand = ()=>{
//   //   const [selected, setSelected] = useState('');
//   //   const [brandOptions, setBrandOptions] = useState([]);
//   //   const brands = useSelector(state=>state.product.brands);
//   //   const dispatch = useDispatch();
  
//   //   const handleChange = event => {
//   //     setSelected(event.target.value);
//   //     dispatch(fetchBrand(brands,event.target.value));
//   //   };
  
  
//   //     useEffect(()=>{
//   //       fetch("https://localhost:7096/products/brands")
//   //       .then((res)=>res.json())
//   //       .then((res)=>setBrandOptions(res));
//   //     },[])
  
//   //   return (
//   //     <div>
//   //       <select value={selected} onChange={handleChange}>
//   //         {brandOptions.map(brand => (
//   //           <option key={brand} value={brand}>
//   //             {brand}
//   //           </option>
//   //         ))}
//   //       </select>
//   //     </div>
//   //   );
//   // };

//   // export default Brand;


// import React, { useEffect, useState } from "react";
// import {useDispatch,useSelector} from 'react-redux';
// import {fetchBrand} from '../actions/actions';
// // import $ from 'jquery';
// import "../index.css";
  
//   const Brand = () => {

//     const [brandOptions, setBrandOptions] = useState([]);
//     const brands = useSelector(state=>state.product.brands);
//     const dispatch = useDispatch();

//     useEffect(()=>{
//       fetch("https://localhost:7096/products/brands")
//       .then((res)=>res.json())
//       .then((res)=>setBrandOptions(res));
//     },[])


  
//     const handleChange = (e) => {
//       dispatch(fetchBrand(brands, e.target.value))
//     };

//     const handleSelect = (e) =>{
      
//     }

//     return (
//       <div id="list1" class="dropdown-check-list" tabindex="100">
//           <span class="anchor" onClick={(e)=>handleSelect(e)}>Select Brands</span>
//           <ul class="items">
//           {
//           brandOptions.forEach((item)=>{
//                     <li><input type="checkbox" name={item} value={item} onChange={(e)=>handleChange(e)}></input>{item}</li>
//           })
//           }
//           </ul>
//       </div>
//     )
// }

//   export default Brand;
  