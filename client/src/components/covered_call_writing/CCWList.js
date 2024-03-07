import React, { useEffect, useState } from "react";
import CCWListItem from "./CCWListItem";

export default function CCWList() {
    const [all, setAll] = useState([]);

    useEffect(() => {
        fetch('/covered_call_writings')
        .then(res => res.json())
        .then(coveredCallWritingsData => setAll(coveredCallWritingsData))
    }, []);

    return (
        <div>
            {all.map(ccw => (
                <CCWListItem key={ccw.id} ccw={ccw} />
            ))}
        </div>
    );
}
