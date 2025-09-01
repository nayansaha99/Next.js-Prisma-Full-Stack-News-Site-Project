"use client";
import React, { useState, useEffect } from 'react';
import { ErrorToast, SuccessToast } from "@/utility/FormHelper";

const UserCommentsList = (props) => {
  const deletedIdsKey = "deleted_comments";
  const [comments, setComments] = useState(props.data);
  useEffect(() => {
    const deletedIds = JSON.parse(localStorage.getItem(deletedIdsKey) || "[]");
    setComments(prev => prev.filter(item => !deletedIds.includes(item.id)));
  }, []);
  
  const onDelete = async (id) => {
    const options = { method: 'DELETE', body: JSON.stringify({ id: parseInt(id) }) };
    let res = await (await fetch("/api/comments/manage", options)).json();

    if (res['status'] === "success") {
      SuccessToast("Request Completed");
      setComments(prev => prev.filter(item => item.id !== id));

      const deletedIds = JSON.parse(localStorage.getItem(deletedIdsKey) || "[]");
      deletedIds.push(id);
      localStorage.setItem(deletedIdsKey, JSON.stringify(deletedIds));
    } else {
      ErrorToast("Invalid Request");
    }
  };

  return (
    <div className="container mt-3">
      <div className="row">
        <div className="col-12">
          <div className="card py-2">
            <ul className="list-group bg-transparent list-group-flush">
              {comments.map((item) => (
                <li key={item.id} className="list-group-item bg-transparent">
                  <h6 className="text-dark">
                    <i className="bi bi-newspaper"></i> {item.news_list.title}
                  </h6>
                  <p className="text-secondary">{item.descriptions}</p>
                  <button
                    onClick={() => onDelete(item.id)}
                    className="btn btn-danger btn-sm px-2"
                  >
                    Remove
                  </button>
                </li>
              ))}
              {comments.length === 0 && (
                <li className="list-group-item text-center text-muted">
                  No comments available.
                </li>
              )}
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default UserCommentsList;
