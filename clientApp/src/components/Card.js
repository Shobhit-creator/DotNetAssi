import React, { useEffect } from 'react';
import { useState } from 'react';
import '../index.css'

const LongText = ({ content,limit}) => {
    const [showAll, setShowAll] = useState(false);
  
    const showMore = () => setShowAll(true);
    const showLess = () => setShowAll(false);
  
    if (content.length <= limit) {
      return <div>{content}</div>
    }
    if (showAll) {
      return <div> 
        {content} 
        <button onClick={showLess}>Read less</button> 
      </div>
    }
    const toShow = content.substring(0, limit) + "...";
    return <div> 
      {toShow} 
      <button onClick={showMore}>Read more</button>
    </div>
  }

const Card = ({product})=>{

   var images = JSON.parse(product.images);
   console.log(images);
   const [ind, setInd] = useState(0);
   const [currImage, setCurrImage] = useState("");

   useEffect(()=>{
    setCurrImage(images[ind]);
   },[images])


   const handlePrev = ()=>{
    if(ind>0){
      setInd(ind-1);
      setCurrImage(images[ind-1]);
    }
   }

   const handleNext = ()=>{
    if(ind!==images.length-1){
      setInd(ind+1);
      setCurrImage(images[ind+1]);
    }
   }

    return (
        <div key={product.id} className="card mb-5">  
          <div class="carousel">
            <img src={currImage} alt="Image" className='card-img-top' />
            <div className="arrows">
              <i className="fas fa-chevron-left" id="arrow-prev" onClick={handlePrev}></i>
              <i className="fas fa-chevron-right" id="arrow-next" onClick={handleNext}></i>
          </div>
        </div>
        <div className='card-body'>
                <h5 className='card-title'>{product.title}</h5>
                <p>${product.price}</p>
                <LongText content={product.description} limit={20} />
                <div className='row'>
                    <div className='col text-left'>
                        stock: {product.stock}
                    </div>
                    <div className='col text-center'>
                        rating: {product.rating}
                    </div>
                </div>
        </div>
       </div>
    )
}
export default Card;






// const Card = ({product})=>{

//   var images = JSON.parse(product.images);
//   const [ind, setInd] = useState(0);
//   const [currImage, setCurrImage] = useState(images[0]);


//   const handlePrev = ()=>{
//    if(ind>0){
//      setInd(ind-1);
//      setCurrImage(images[ind-1]);
//    }
//   }

//   const handleNext = ()=>{
//    if(ind!==images.length-1){
//      setInd(ind+1);
//      setCurrImage(images[ind+1]);
//    }
//   }
//   useEffect(()=>{
   
//   },[currImage]);

//    return (
//        <div key={product.id} className="card mb-5">  
//          <div class="carousel">
//            <img src={currImage} key={currImage.uri}alt="Image" className='card-img-top' />
//            <div className="arrows">
//              <i className="fas fa-chevron-left" id="arrow-prev" onClick={()=>handlePrev()}></i>
//              <i className="fas fa-chevron-right" id="arrow-next" onClick={()=>handleNext()}></i>
//          </div>
//        </div>
//        <div className='card-body'>
//                <h5 className='card-title'>{product.title}</h5>
//                <p>${product.price}</p>
//                <LongText content={product.description} limit={20} />
//                <div className='row'>
//                    <div className='col text-left'>
//                        stock: {product.stock}
//                    </div>
//                    <div className='col text-center'>
//                        rating: {product.rating}
//                    </div>
//                </div>
//        </div>
//       </div>
//    )
// }
// export default Card;