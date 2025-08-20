"use client";
import React from "react";
import parse from "html-react-parser";

const NewsDetails = (props) => {
  return (
    <div>
      <div className="container">
        <h4 className="my-3">{props.details["title"]}</h4>
        <hr />
        <div className="row">
          <div className="col-md-12 col-lg-12">
            <img
              className="w-100 img-thumbnail"
              src={props.details["img1"]}
              alt="news"
            />
            <div className="my-3 mx-3">{parse(props.details["long_des"])}</div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default NewsDetails;
