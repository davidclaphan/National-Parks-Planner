import React from 'react';


function TableData({ data, headers }) {

    function getClass(data) {
        if (data === "Easy") {
          return 'easy';
        } else if (data === "Moderate") {
          return 'moderate';
        } else if (data === "Hard") {
          return 'hard';
        }
      }

    function getLink(data) {
        console.log(data)
        return data.link
    }

    
    return (
        <tr key={data}>
          {headers.map((ele) => (
                <td className={getClass(data[ele])}>{data[ele]}</td>
            ))}
            <td><button onClick={() => window.open(getLink(data))}>Hike Details</button> </td>
        </tr>
            )        
}

export default TableData;