import React from "react";
import Product from "../components/Products";
function Home() {
  return (
    <div className="hero">
      <div className="card text-white bg-dark border-0 ">
        <img
          src="/assets/bg.jpg"
          className="card-img img-fluid"
          alt="background"
          height="550px"
        />
        <div className="card-img-overlay d-flex flex-column">
          <div className="container">
            <h1 className="card-title fw-bold mb-0 text-success">
              NEW SESION ARRIVALES
            </h1>
            <p className="card-text lead fs-2">CHECK OUT THE TRENDS</p>
          </div>
        </div>
      </div>
      <Product />
    </div>
  );
}

export default Home;
