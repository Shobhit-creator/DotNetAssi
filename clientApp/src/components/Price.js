
import React from 'react';
// import Typography from '@material-ui/core/Typography';
import { Typography } from '@mui/material';
import { Slider } from '@mui/material';
// import Slider from '@material-ui/core/Slider';
import { useDispatch } from 'react-redux';
import { fetchPrice } from '../actions/actions';
  
const Price = () => {
  
  // Our States
  const [value, setValue] =  React.useState([10,1780]);
  const dispatch = useDispatch();
  
  const rangeSelector = (event, newValue) => {
    setValue(newValue);
    dispatch(fetchPrice(newValue));
  };
  
  return (
    <div style={{
      margin: 'auto',
      display: 'block',
      width: 'fit-content'
    }}>
      <Typography id="range-slider" gutterBottom>
        Select Price Range:
      </Typography>
      <Slider
        value={value}
        onChange={rangeSelector}
        valueLabelDisplay="auto"
        min={10}
        max={1780}
      />
      Your range of Price is between {value[0]} /- and {value[1]} /-
    </div>
  );
}

export default Price;