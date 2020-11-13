import React from "react";

const Posts = (props) => {
  console.log(props.attributes);
  return (
    <div>
      {props.attributes.post}
    </div>
  )
};

export default Posts;