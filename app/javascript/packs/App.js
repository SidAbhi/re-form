import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import Main from '../components/Main';
import Nav from './Nav'

const App = () => {
  return (
    <>
      <Nav />
      <Switch>
        <Route path="/" exact component={Main} />
      </Switch>
    </>
  );
};

export default App;