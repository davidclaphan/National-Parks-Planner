import React from 'react';

const RenderParksDropdown = ({data}) => {
    return(
        <option value={data.id}>{data.NAME}</option>  
    )
}

export default RenderParksDropdown;