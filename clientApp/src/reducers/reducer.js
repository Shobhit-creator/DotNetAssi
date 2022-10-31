import {
    FETCH_CATEGORY,
    FETCH_BRAND,
    FETCH_PRICE,
  } from '../actions/actionsType';
  
  const initialState = {
    categories: [],
    brands: [],
    min_price: 10,
    max_price: 1780
  }
  
  export default function reducer(state = initialState, action){
    switch (action.type) {
      case FETCH_CATEGORY:
        return {
          ...state,
          categories: action.payload
        }
      case FETCH_BRAND:
        return {
          ...state,
         brands: action.payload
        }
      case FETCH_PRICE:
        return {
          ...state,
          min_price: action.payload[0],
          max_price: action.payload[1]
        }
      default: return {...state}
    }
  }
  