import React, {useState, useEffect, useReducer} from 'react';
import Axios from 'axios';
import RenderTable from '../components/tableComponent';
import VisitorTable from '../components/visitorTableComponent';
import RenderParksDropdown from '../components/ParksDropdown';
import RenderHikesDropdown from '../components/HikesDropdown';

const Planner = () => {

    // Get data for Tables
    const [parks, setParks] = useState([]);
    const [visitors, setVisitors] = useState([]);
    const [hikes, setHikes] = useState([]);
    const [ParksSelect, setParksSelect] = useState("")
    const [HikesSelect, setHikesSelect] = useState("")
    const [renderNew, forceUpdate] = useReducer(x => x+1, 0);

    useEffect(() => {
        const getParks = async () => {
            try {
                const result = await Axios.get('http://flip2.engr.oregonstate.edu:10726/parksData')
                setParks(result.data)
            } catch(err) {
                console.log(err)
            }
        }
        getParks();
    }, [renderNew]);

    useEffect(() => {
        const getVisitors = async () => {
            try {
                if (ParksSelect !== "") {
                    const result = await Axios.get(`http://flip2.engr.oregonstate.edu:10726/visitorData/${ParksSelect}`)
                    setVisitors(result.data)
                }
            } catch (err) {
                console.log(err)
            }
        }
        getVisitors();
    }, [renderNew]);

    useEffect(() => {
        const getHikes = async () => {
            try {
                if (ParksSelect !== "" && HikesSelect) {
                    const result = await Axios.get(`http://flip2.engr.oregonstate.edu:10726/hikesFiltered/?park=${ParksSelect}&diff=${HikesSelect}`)
                    setHikes(result.data)
                }
                else if (ParksSelect === "" && HikesSelect) {
                    const result = await Axios.get(`http://flip2.engr.oregonstate.edu:10726/hikesOnly/${HikesSelect}`)
                    setHikes(result.data)
                }
                else if (ParksSelect) {
                    const result = await Axios.get(`http://flip2.engr.oregonstate.edu:10726/hikesData/${ParksSelect}`)
                    setHikes(result.data)
                }
                else {
                    const result = await Axios.get('http://flip2.engr.oregonstate.edu:10726/hikesData')
                    setHikes(result.data)
                }
            } catch(err) {
                console.log(err)
            }
        }
        getHikes();
    }, [renderNew]); 


    // Pull data from the database to populate the table headers
    const [parksColumns, setParksHeaders] = useState([])
    let parksHeaders = []

    useEffect(() => {
        const populateHeaders = async () => {
            try { 
                const res = await Axios.get('http://flip2.engr.oregonstate.edu:10726/parksCol')
                setParksHeaders(res.data) 
            } catch(err) {
                console.log(err)
            }
        }
        populateHeaders()
    });

    // Not all columns in db should display for these tables, manually set headers we want to see
    let hikesHeaders = ["location", "NAME", "difficulty", "distance", "elevation", "type"];
    let visitorHeaders = ["month", "visitors"];

    const parksPop = () => {
        parksColumns.map((e) => {
            parksHeaders.push(e.Field)
        })
    }
    parksPop()

    // GET data to Generate Parks Dropdown
    const[parksDropDown, setParksDropdown] = useState([])

    useEffect (() => {
        const populateParksDrop = async () => {
            try {
                const result = await Axios.get('http://flip2.engr.oregonstate.edu:10726/parksNames')
                setParksDropdown(result.data)
            } catch (err) {
                console.log(err)
            }
            }
            populateParksDrop()
    }, [renderNew]);

    // GET data to Generate Hikes Dropdown
    const[hikesDropDown, setHikesDropdown] = useState([])

    useEffect (() => {
        const populateHikesDrop = async () => {
            try {
                const result = await Axios.get('http://flip2.engr.oregonstate.edu:10726/hikesDiff')
                setHikesDropdown(result.data)
            } catch (err) {
                console.log(err)
            }
            }
            populateHikesDrop()
    }, [renderNew]); 

    // Random button functionality (microservice)
    const getRandom = async () => {
        try {
            const randNum = await Axios.get('http://flip1.engr.oregonstate.edu:6178/num?upper=6')
            const randInt = randNum.data
            console.log(randInt);
            const result = randInt.toString();
            const randPark = await Axios.get(`http://flip2.engr.oregonstate.edu:10726/randPark/${result}`)
            const park = randPark.data[0]['NAME'];
            setParksSelect(park);
            updateHikes();
        } catch (err) {
        console.log(err)
        }
    };
    
    // Force rerender of hikes table
    const updateHikes = async () => {
        forceUpdate()
    };

    // Toggle for visitor data
    const [showTable, setShowTable] = useState(false);
    const toggleTable = () => {
        setShowTable(!showTable);
    };

    // Render the Parks Page
    return (
        <div className='main'>
            <p> Use the below selection tool to select a National Park or click the random button to have one selected for you!</p>
            
            <div className='section1'>
            <h3 id="page-header"> National Parks </h3>
                <div id="table-div">
                    <div className='park-select-ele'>
                        <select value={ParksSelect} onChange={(e) => {
                            setParksSelect(e.target.value);
                            updateHikes();
                        }}>
                            <option value=''>Select a National Park</option>
                            {parksDropDown.map((parkName) => (<RenderParksDropdown data={parkName} />))}
                        </select>
                
                    </div>&nbsp;
                </div>
            
                <div>
                    <button onClick={getRandom}>RANDOM</button>
                </div>
            </div>


            <div className='selection'>Selected Park: <b>{ParksSelect}</b></div>

            <div className='section2'>    
                <div>
                    <h3> Visitor Data</h3>
                    <p><text>Click this button to see or hide 2022 visitor data:</text></p>
                    <button onClick={toggleTable}> 2022 Visitor Data </button>&nbsp;
                    <p></p>
                    {showTable && <VisitorTable dataSet={visitors} headerSet={visitorHeaders}/>}    
                </div>
            </div>

            <p></p>

            <div className='section3'>
                <div id='table-div'>
                    <div className='hiking-skill-select'>
                    <h3> Recommended Hiking</h3>&nbsp;
                        <select value={HikesSelect} onChange={(e) => {
                            setHikesSelect(e.target.value);
                            updateHikes();
                        }}>
                            <option value=''>All</option>
                            {hikesDropDown.map((hikeLevel) => (<RenderHikesDropdown data={hikeLevel} />))}
                        </select> <p></p>
            
                    </div>                    
                

                    <RenderTable dataSet={hikes} headerSet={hikesHeaders} />
                    <p>*clicking "Hike Details" redirects to an external URL</p>
                </div>
            </div>



        </div>

    )
};

export default Planner;