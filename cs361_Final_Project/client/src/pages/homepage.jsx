import React from 'react';
import image from '../images/GrandTetonMountain.png' 

/* image sources:
rmnp.jpg: https://www.visitestespark.com/rocky-mountain-national-park/
grandtetons.jpg: https://en.wikipedia.org/wiki/Grand_Teton_National_Park
GrandTetonMountain.png: https://blog.caravan.com/mount-rushmore/grand-tetons-national-park/
*/
const HomePage = () => {
    return ( 
        <div className='homepage'>
            <h3>Home Page</h3>
            
            <p>Welcome to the National Park Trip Planner! Use the Trip Planner link above to open the tool and begin planning your visit.</p>
            <p>If you're unsure which park to visit next, try the RANDOM button.</p>
            

            <img src={image} alt="Grand Teton National Park" className='center-image' />
        
        </div>
        
    )
};

export default HomePage;