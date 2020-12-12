import Head from 'next/head';
import Header from './include/header.js';
import Footer from './include/Footer.js';

const mainFlex = {
    display: "flex"
}

const sidebar = () => {
    return(
        <section className="sidebar">
            <h1>Testy</h1>
            <p><a href="">Rychli test</a></p>
        </section>
    )
}

const avg = () => {
    return(
        <article className="avg">
            <span>
                <h1>Jmeno testu</h1>
                <a href="">nastaveni</a>
                <p>Obtiznost: normal</p>
            </span>
            <span>
                <h1>AVG - 3.2</h1>
                <p>
                <button type="button" name="button">oznamkovat</button>
                </p>
            </span>
        </article>
    )
}

const setter = () => {
    return(
        <article className="setter">
            <span>
                <h3>Jmeno studenta</h3>
                <p>znamka</p>
            </span>
            <span>
                <p>Jmeno</p>
                <select name="">
                    <option value="">N</option>
                    <option value="">1</option>
                    <option value="">2</option>
                    <option value="">3</option>
                    <option value="">4</option>
                    <option value="">5</option>
                </select>
            </span>
        </article>
    )
}

const control = () => {
    return(
        <section className="control">
            {avg()}
            {setter()}
        </section>
    )
}


const exams = () => {
    return (
        <>
            <Header role={1} title="BEAM - Managment System" />
            <hr/>
            <main style={mainFlex}>
                {sidebar()}
                {control()}
            </main>
            <style jsx global>
                {`
.sidebar{
    margin: 10px auto;
    text-align: center;
    width: 20%;
    font-size: 125%;
    overflow-y: scroll;
    height: 80vh;
}
.control{
  flex: 1 1 auto;
}
.control h1{
  font-size: 200%;
}
.avg{
  display: flex;
  justify-content: space-between;
  padding: 10px 40px;
}
.avg *{
  flex: 1 1 auto;
  text-align: center;
}
.avg a{
  float: left;
}
.avg p{
  float: right;
}
.setter{
  background-color: whitesmoke;
  border-radius: 10px;
  padding: 0px 20px;
  margin: 0px 30px;
  overflow-y: scroll;
  height: 60vh
}
.setter span{
  display: flex;
  padding: 0px 40px;
  border-bottom: 1px solid gray;
  justify-content: space-between;
}
`}
            </style>
        </>
    );
}

export default exams;
