import axios from 'axios';
import React, {useState, useEffect} from 'react';
import Posts from './Posts/Posts'

const Main = () => {
  const [posts, setPosts] = useState([]);
  const api = '/api/v1/posts.json';

  useEffect(() => {
    axios.get(api)
    .then(resp => {
      setPosts(resp.data);
    })
    .then(console.log(posts))
    .catch( error => console.log(error) );
  }, [posts.length])

  const postsList = posts.map(item => {
    return(
      <Posts key={item.id} attributes={item}/>
    )
  });


  return (
    <div>
      {postsList}
    </div>
  )
};

export default Main;