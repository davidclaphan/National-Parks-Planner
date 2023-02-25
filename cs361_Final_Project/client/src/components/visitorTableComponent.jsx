import React from 'react';
import TableHeader from '../components/tableHeader'
import VisitorData from '../components/visitorData';


const VisitorTable = ({dataSet, headerSet}) => {

    return(
        <table className='visitor-table'>
            <thead>
                {headerSet.map((col) => (                
                    <TableHeader data={col}/>
                ))}
            </thead>
            <tbody>
                {dataSet.map((attr) => (
                    <VisitorData data={attr} headers={headerSet} />                     
                    ))}
            </tbody>
        </table>
    )
}

export default VisitorTable;