import './App.css';
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navigation from './pages/navigation';
import HomePage from './pages/homepage';
import ParksPlanner from './pages/parks_planner';



function App() {

  return (
    <div className="App">
      <Router>
          <Navigation /> 
          <Routes>
            <Route path="/homepage" element={<HomePage/>} />
            <Route path="/parks_planner" element={<ParksPlanner/>} />
          </Routes>
      </Router>
  </div>
  );
}

export default App;