import Header from './../include/header.js';

const sidebar = () => {
    return(
        <section className="sidebar">
            <h1>Hodiny</h1>
            <p><a href="">Cesky jazyk</a></p>
            <p><a href="">Matika</a></p>
        </section>
    )
}
const statistic = () => {
    return(
        <section className="statistic">
            <article className="student">
                <h1>Subject</h1><h1>3.54</h1>
            </article>
            <article className="exams">
                <span className="first-span">
                    <p>jmeno testu</p>
                    <p>znamka</p>
                </span>
                <span>
                    <p>Po - Fast test</p>
                    <p>3</p>
                </span>
                <span>
                    <p>Po - Fast test</p>
                    <p>3</p>
                </span>
                <span className="last-span">
                    <p>Po - Fast test</p>
                    <p>3</p>
                </span>
            </article>
        </section>
    )
}

const mymarks = () => {
    return (
        <>
            <Header role={1} title="BEAM - Managment System"/>
            <hr/>
            <main>
                {sidebar()}
                {statistic()}
            </main>
            <style jsx global>
                {`
                main{
                    display: flex;
                    }
                    .sidebar{
                        margin: 10px auto;
                        text-align: center;
                        width: 20%;
                        font-size: 125%;
                        overflow-y: scroll;
                        height: 80vh;
                    }
                    .sidebar p{
                    display: flex;
                    padding: 0 40px;
                    }
                    .sidebar a{
                    background-color: whitesmoke;
                    padding: 10px;
                    flex: 1;
                    }
                    .statistic{
                    flex: 1 1 auto;
                    padding: 10px;
                    }
                    .statistic h1{
                    font-size: 200%;
                    font-weight: bolder;
                    }
                    .student{
                        display: flex;
                        justify-content: space-around;
                        font-size: 150%;
                    }
                    .exams{
                    background-color: whitesmoke;
                    border-radius: 10px;
                    padding: 0px 20px;
                    margin: 0px 30px;
                    overflow-y: scroll;
                    height: 60vh
                    }
                    .exams span{
                    display: flex;
                    padding: 0px 40px;
                    border-bottom: 1px solid gray;
                    justify-content: space-between;
                    }
                    .last-span{
                    border-bottom: none !important;
                    }
                    .first-span{
                    border-bottom: 2px solid black !important;
                    }
                `}
            </style>
        </>
    );
}

export default mymarks;
