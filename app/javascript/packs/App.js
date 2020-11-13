import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import Main from '../components/Main';

const App = () => {
  return (
    <Switch>
      <Route path="/" exact component={Main} />
    </Switch>
  );
};

export default App;