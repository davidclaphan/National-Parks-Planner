import React from 'react';
import { Link } from 'react-router-dom';

const Navigation = () => {
    return (
        <header id='header'>
            <h1 className="mainTitle">National Parks Trip Planner</h1>
            <div className="nav-div">
                <ul className="navbar">
                        <Link to='.\homepage' class='links'>
                            <span>Home</span>
                        </Link>
                        <Link to='.\parks_planner' className='links'>
                            <span>Trip Planner</span>
                        </Link>
                </ul>  
            </div>
        </header>
    )
}

export default Navigation;