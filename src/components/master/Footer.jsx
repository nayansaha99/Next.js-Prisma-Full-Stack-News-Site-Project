"use client"
import React from 'react';
import Subscribe from "@/components/news/Subscribe";
import Link from "next/link";
const Footer = (props) => {
    return (
        <div className="section-footer shadow-md">
            <div className="footer py-5 border border-danger shadow-sm">
                <div className="container">
                    <div className="row">
                        <div className="col-md-3 col-sm-6  p-3">
                            <h5 className="text-black fw-bold my-4 mx-1"> ABOUT </h5>
                            <p className="text-black"> {props.data['socials']['about']} </p>
                            <div className="d-flex justify-content-sm-start">
                                <div className="d-flex align-items-center">
                                    <a target="_blank" href={props.data['socials']['facebook']}>
                                        <div className="d-flex justify-content-center align-items-center">
                                            <i className=" h3 text-black bi bi-facebook"></i>
                                        </div>
                                    </a>
                                    <a target="_blank" href={props.data['socials']['youtube']}>
                                        <div className="d-flex justify-content-center align-items-center">
                                            <i className="h3 text-black  mx-2 bi bi-youtube"></i>
                                        </div>
                                    </a>
                                    <a target="_blank" href={props.data['socials']['twitter']}>
                                        <div className="d-flex justify-content-center align-items-center">
                                            <i className=" h3 text-black mx-2 bi bi-twitter"></i>
                                        </div>
                                    </a>
                                    <a target="_blank" href={props.data['socials']['linkedin']}>
                                        <div className="d-flex justify-content-center align-items-center">
                                            <i className=" h3 text-black mx-2 bi bi-linkedin"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div className="col-md-3 col-sm-6 p-3">
                            <h5 className="text-black fw-bold my-3">RECOMMENDED</h5>
                            {
                                props.data['categories'].map((item,i)=>{
                                    if(i<4){
                                        return<Link key={i} className="nav-link text-black my-1"  href={`/category?id=${item['id']}`} >{item['name']}</Link>
                                    }
                                })
                            }


                        </div>
                        <div className=" col-md-3 col-sm-6 p-3">
                            <h5 className="text-black fw-bold my-3"> LEGAL </h5>
                            <ul className="list-unstyled text-black">
                                <li className="my-1">
                                    <Link href="/privacy" className="nav-link">Privacy Policy</Link>
                                </li>
                                <li className="my-1">
                                    <Link href="/terms" className="nav-link">Terms & Conditions</Link>
                                </li>
                            </ul>
                        </div>
                        <div className="col-md-3 col-sm-6 p-3">
                            <Subscribe />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Footer;