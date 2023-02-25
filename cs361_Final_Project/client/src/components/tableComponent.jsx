import React from 'react';
import TableHeader from '../components/tableHeader'
import TableData from '../components/tableData';


const RenderTable = ({dataSet, headerSet}) => {

    return(
        <table className='my-table'>
            <thead>
                {headerSet.map((col) => (                
                    <TableHeader data={col}/>
                ))}
            <th>info*</th>
            </thead>
            <tbody>
                {dataSet.map((attr) => (
                    <TableData data={attr} headers={headerSet} />                     
                    ))}
            </tbody>
        </table>
    )
}

export default RenderTable;