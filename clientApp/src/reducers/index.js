import { combineReducers } from "redux";
import reducer from "./reducer";

const rootReducer = combineReducers({
    product: reducer,
});

export default rootReducer;