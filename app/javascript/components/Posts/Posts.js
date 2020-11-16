import React from "react";
import {Link} from 'react-router-dom';
import axios from "axios";

const Posts = (props) => {
  console.log(props.attributes);
  const destroy = () => {
    axios.delete(`/api/v1/posts/${props.attributes.id}`)
  }

  return (
    <div>
      <p>{props.attributes.mpost}</p>
      <span><p onClick = {destroy}>Delete</p></span>
    </div>
  )
};

export default Posts;