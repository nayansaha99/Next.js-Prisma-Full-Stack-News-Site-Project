"use client"
import React, { useState, useEffect } from 'react';
import { Tab, Tabs } from "react-bootstrap";
import CommentForm from "@/components/news/Comment-Form";

const CommentsList = (props) => {
    const [key, setKey] = useState("Comments");
    const [comments, setComments] = useState(props.data);
    const deletedIdsKey = "deleted_comments";
    const filterComments = () => {
        const deletedIds = JSON.parse(localStorage.getItem(deletedIdsKey) || "[]");
        setComments(props.data.filter(item => !deletedIds.includes(item.id)));
    };
    useEffect(() => {
        filterComments();
        const handleStorage = (e) => {
            if (!e || e.key === deletedIdsKey) {
                filterComments();
            }
        };
        window.addEventListener("storage", handleStorage);
        const handleCustom = () => filterComments();
        window.addEventListener("commentsUpdated", handleCustom);

        return () => {
            window.removeEventListener("storage", handleStorage);
            window.removeEventListener("commentsUpdated", handleCustom);
        };
    }, [props.data]);

    return (
        <div className="container">
            <Tabs id="controlled-tab-example" activeKey={key} onSelect={(k) => setKey(k)} className="mb-3">
                <Tab eventKey="Comments" title="Comments">
                    <ul className="list-group bg-transparent list-group-flush">
                        {comments.map((item, i) => (
                            <li key={i} className="list-group-item bg-transparent">
                                <h6 className="text-dark">
                                    <i className="bi bi-person-circle"></i> {item.users.firstName}
                                </h6>
                                <p className="text-secondary">{item.descriptions}</p>
                            </li>
                        ))}
                        {comments.length === 0 && (
                            <li className="list-group-item text-center text-muted">
                                No comments available.
                            </li>
                        )}
                    </ul>
                </Tab>
                <Tab eventKey="Create" title="Create">
                    <CommentForm postID={props.postID} />
                </Tab>
            </Tabs>
        </div>
    );
};

export default CommentsList;
