import React from 'react';


function VisitorData({ data, headers }) {

    return (
        <tr key={data}>
          {headers.map((ele) => (
                <td>{data[ele]}</td>
            ))}
        </tr>
            )        
}

export default VisitorData;