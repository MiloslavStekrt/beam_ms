import Header from './include/header';
import Footer from './include/Footer';

const myschool = () => {
  return (
    <>
      <style>{`
        /* details */
        .details{
          text-align: center;
          width: 60vw;
          background-color: whitesmoke;
          padding: 10px;
          margin: 50px auto;
          border-radius: 20px;
          font-size: 200%;
        }
        .details span{
          display: flex;
          justify-content: space-around;
          font-size: 75%;
        }
        .details span *{
          padding: 10px
        }
        .allClasses{
          cursor: pointer;
          border-radius: 10px
        }
        .allClasses:hover{
          background-color: white
        }
        /* schedule */
        .schedule{
          border-radius: 20px;
          box-shadow: 2px 2px 10px 10px #89f;
          width: 70%;
          background-color: #67f;
          padding: 10px 20px;
          margin: 50px auto;
        }
        .schedule h2{
          padding-left: 5%;
          color: whitesmoke
        }
        .lessons{
          display: flex;
          color: white;
        }
        .lessons p{
          cursor: pointer;
          text-align: center;
          border: 1px solid blue;
          font-size: 150%;
          padding: 25px 0px;
          flex: 1 1 auto;
        }
        .lessons p:hover{
          background-color: blue;
        }
        /* activities */
        .activities{
          display: flex;
          font-size: 150%;
          padding: 50px;
        }
        .exams, .homeworks{
          flex: 1 1 auto;
          padding: 0 5%;
          margin: auto;
        }
        .exams h1, .homeworks h1{
          text-align: center;
          border-bottom: 1px solid black;
        }
        .exams p, .homeworks p{
          border-bottom: .5px solid gray;
        }
        
        `}</style>
      <Header role={1} title="BEAM - Managment System" />
      <hr/>
      <main>
        <section class="details">
          <h1>Ratanda serios corporation</h1>
          <span>
            <p> </p>
            <p class="allClasses">All classes</p>
          </span>
        </section>
        <section class="schedule">
          <h2>You have today</h2>
          <article class="lessons">
            <p>M</p>
            <p>M</p>
            <p>AJ</p>
            <p>CJ</p>
            <p>L</p>
            <p> </p>
          </article>
        </section>
        <section class="activities">
          <article class="exams">
          <h1>Exams</h1>
          <p>St - <a href="#"><strong>CJ</strong> </a> - Opakovani</p>
          <p>next Pa - <a href="#"><strong>CJ</strong> </a> - oprava Opakovani</p>
          </article>
          <article class="homeworks">
          <h1>Homeworks</h1>
          <p>Ut - <a href="#"><strong>CJ</strong> </a> - 192/13 c</p>
          <p>Ct - <a href="#"><strong>M</strong> </a> - 28/31 ucebnice</p>
          </article>
        </section>
      </main>
      <Footer/>
    </>
  );
}

export default myschool;
