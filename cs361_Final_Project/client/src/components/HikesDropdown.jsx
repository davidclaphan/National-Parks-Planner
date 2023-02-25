import React from 'react';

const RenderHikesDropdown = ({data}) => {
    return(
        <option value={data.id}>{data.difficulty}</option>  
    )
}

export default RenderHikesDropdown;