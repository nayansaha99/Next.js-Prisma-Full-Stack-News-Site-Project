"use client";
import React, { useState } from "react";
import Link from "next/link";

const NewsList = (props) => {
  const INITIAL_COUNT = 6; 
  const LOAD_COUNT = 6;    

  const [visible, setVisible] = useState(INITIAL_COUNT);
  const [loading, setLoading] = useState(false);
  const showMoreItems = () => {
    setLoading(true);
    setTimeout(() => {
      setVisible((prev) => prev + LOAD_COUNT);
      setLoading(false);
    }, 500); 
  };

  const showLessItems = () => {
    setVisible(INITIAL_COUNT);
  };

  return (
    <>
      <div className="row">
        {props.latest.slice(0, visible).map((item, i) => {
          return (
            <div key={i} className="p-2 col-md-4">
              <Link
                href={`/details?id=${item["id"]}`}
                className="text-decoration-none text-dark"
              >
                <div
                  className="card bg-white shadow-sm h-100"
                  style={{ overflow: "hidden", cursor: "pointer" }}
                >
                  <div
                    style={{ width: "100%", height: "200px", overflow: "hidden" }}
                  >
                    <img
                      className="card-img-top"
                      src={item["img1"]}
                      alt="News Image"
                      style={{
                        width: "100%",
                        height: "100%",
                        objectFit: "cover",
                      }}
                    />
                  </div>
                  <div className="card-body">
                    <h6 className="card-title">{item["title"]}</h6>
                    <p>{item["short_des"]}</p>
                    <p className="my-2 fw-bold p-0">
                      <i className="bi bi-clock"></i> 3 Days Ago
                    </p>
                    <span className="btn mt-2 btn-sm btn-outline-danger">
                      Read More
                    </span>
                  </div>
                </div>
              </Link>
            </div>
          );
        })}
      </div>

      <div className="text-center mt-4">
        {visible < props.latest.length && (
          <button
            onClick={showMoreItems}
            disabled={loading}
            className="btn btn-outline-secondary px-4 mx-2"
            style={{
              background: "transparent",
              color: "#990000",
              cursor: "pointer",
             
            }}
          >
            {loading ? "Loading..." : "See More"}
          </button>
        )}

        {visible > INITIAL_COUNT && (
          <button
            onClick={showLessItems}
            className="btn btn-outline-secondary px-4 mx-2"
            style={{
              
              background: "transparent",
              cursor: "pointer",
              color: "#990000",
              cursor: "pointer",
             
            }}
          >
            See Less
          </button>
        )}
      </div>
    </>
  );
};

export default NewsList;
