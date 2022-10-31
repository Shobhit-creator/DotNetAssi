import{
    FETCH_CATEGORY,
    FETCH_BRAND,
    FETCH_PRICE
} from './actionsType'

export const fetchCategory = (categories) => {
    return {
      type: FETCH_CATEGORY,
      payload: categories
    }
  }
  
export const fetchBrand = (brands) => {
    return {
      type: FETCH_BRAND,
      payload: brands
    }
}
  
export const fetchPrice = (priceRange) => {
    return {
      type: FETCH_PRICE,
      payload: priceRange
    }
}