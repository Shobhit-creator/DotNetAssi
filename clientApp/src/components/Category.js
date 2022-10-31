import React, { useEffect, useState } from "react";
import {useDispatch} from 'react-redux';
import {fetchCategory} from '../actions/actions';
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
            onCheck={() => null}
          />{" "}
          <label>{props.label}</label>
        </components.Option>
      </div>
    );
  };
  
  const Category = () => {

    const [optionSelected, setOptionSelected] = useState(null);
    const [categories, setCategories] = useState([]);
    const dispatch = useDispatch();
  
    const handleChange = (e) => {
      setOptionSelected(e);
      const categoriesSelected = [];
      e.forEach((obj) => {
        categoriesSelected.push(obj.value);
      });
      dispatch(fetchCategory(categoriesSelected));
    };



    useEffect(()=>{
      fetch("https://localhost:7096/products/categories")
      .then((res)=>res.json())
      .then((res)=>setCategories(res));
    },[])

    let categoryOptions = categories.map(function (item) {
      return { value: item, label: item };
    })
  
      return (
        <>
        <span class="label label-default">Category: </span>
        <span
          style={{width: "100%"}}
          className="d-inline-block"
          data-toggle="popover"
          data-trigger="focus"
          data-content="Please selecet account(s)"
        >
          <ReactSelect
            options={categories.length===0?[{}]:categoryOptions}
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
  
  export default Category;