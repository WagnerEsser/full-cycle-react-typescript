// @flow 
import { FC } from 'react';
import "./Title.css"

interface IProps {
    color?: string
}

export const Title: FC<IProps> = props => {
    const { color = "red", children } = props

    return (
        <h1 className="title" style={{color}}>
            {children}
        </h1>
    )
}