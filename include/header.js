import Link from 'next/link';
import Head from 'next/head';

const header = ({role, title}) => {
    const navigation = () => {
        if(role === 1){
            return(
                <>
                    <Link href="/mymarks">
                        <a>Moje znamky</a>
                    </Link>
                    <a className="a" href="">Online material</a>
                </>
            )
        }else if(role === 2){
            return(
                <>
                    <a className="a" href="">Domocí úkoly</a>
                    <a className="a" href="">Testy</a>
                </>
            );
        }else if(role < 3){
            return(
                <>
                    <a className="a" href="">Moje znamky</a>
                    <a className="a" href="">Online material</a>
                    <a className="a" href="">admin panel</a>
                </>
            )
        }
    } 
    return (
        <header className="header">
            <Head>
                <title>{title}</title>
                <link rel="icon" href="/favicon.ico" />
            </Head>
            <Link href="/">
                <a><h1 className="h1">BEAM - MS</h1></a>
            </Link>
            <nav className="nav">
                <Link href="/school">
                    <a >Moje škola</a>
                </Link>
                {navigation()}
                <a className="a" href="">zvoneček</a>
                <a className="a" href="">odejit</a>
            </nav>
            <style jsx global>{`
                body{
                    margin:0;
                }
                a{
                    text-decoration: none;
                }
                /* navigation */
                header{
                    display: flex;
                    justify-content: space-between;
                    padding: 0 50px;
                }
                nav *{
                    align-self: center;
                    padding: 10px;
                }
                nav{
                    display: flex;
                }
                /* footer */
                footer{
                    background-color: black;
                    color: white;
                    text-align: center;
                    display: flex;
                    text-shadow: 1px 1px white;
                    justify-content: space-around;
                }
                
            `} </style>
        </header>
    );
}

export default header;
