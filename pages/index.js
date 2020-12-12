import Header from './include/header.js';
import Footer from './include/Footer.js';

const uvod = () => {
  return(
    <section className="uvod">
      <h1>Welcome to <strong>BEAM Managment System</strong></h1>
      <p>We are the way to do your <strong>managment of students</strong>. <br/> You will know <strong>everything</strong> you need and do <strong>everything</strong> you want.</p>
      <a href=""><strong>JOIN TO US</strong></a>
    </section>
  )
}

const qasection = () => {
  return(
    <section className="qasection">
      <article>
        <h1>What we do?</h1>
        <hr/>
        <p>We manage your school with solution of testing your students.</p>
        <p>Show correct answer after is reched the timeout of the test.</p>
        <p>We are using one solution to know if student left tab in browser.</p>
        <p>Know what is your mark.</p>
        <p>Show if is test easy, hard or normal</p>
      </article>
      <article>
        <h1>How we do it?</h1>
        <hr/>
        <p>Give own easiest way to test your student.</p>
        <p>Wait aflter is test complete.</p>
        <p>Set fullscreen mode every time student want to change tab or exit fullscreen mode.</p>
        <p>You can show own marks profile.</p>
        <p>compute test difficulty.</p>
      </article>
    </section>
  );
}

const popularCompanies = () => {
  return(
    <section id="popularCompanies" className="popularCompanies">
      <a href="">
        <img src="" alt="Logo of School"/>
        <p>School Name</p>
      </a>
      <a href="">
        <img src="" alt="Logo of School"/>
        <p>School Name</p>
      </a>
      <a href="">
        <img src="" alt="Logo of School"/>
        <p>School Name</p>
      </a>
      <a href="">
        <img src="" alt="Logo of School"/>
        <p>School Name</p>
      </a>
    </section>
  );
}

export default function Home() {
  return (
    <>
      <Header role={1} title="BEAM - Managment System" />
      <hr/>
      <main>
        {uvod()}
        {qasection()}
        {popularCompanies()}
        <Footer/>
        <style jsx global>
          {`/* main */
          .uvod{
              height: 20vh;
              text-align: center;
              padding: 200px 80px;
          }
          .uvod p{
              color: gray;
          }
          .qasection{
              border-radius: 20px;
              padding: 10px 40px;
              margin: 10px 50px;
              text-align: center;
              background-color: whitesmoke;
              display: flex;
              box-shadow: 1px 1px 5px 5px whitesmoke;
              justify-content: space-between;
          }
          .popularCompanies{
              border-radius: 20px;
              padding: 20px 20px;
              margin: 40px;
              background-color: whitesmoke;
              box-shadow: 1px 1px 5px 5px whitesmoke;
              display: flex;
              text-align: center;
          }
          .popularCompanies *{
              flex: 1 1 auto
          }
          `}
        </style>
      </main>
    </>
  )
}
