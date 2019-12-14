import React, { Component } from 'react'

class Dashboard extends Component {
  constructor(props, { authData }) {
    super(props)
    authData = this.props
  }

  render() {
    return(
      <main className="container">
        <div className="pure-g">
          <div className="pure-u-1-1">
            <h1>Dashboard</h1>
    <p><strong>Congratulations {this.props.authData.name}!</strong> <br/>
    If you're seeing this page, you've logged in to UPort, from <b> {this.props.authData.country} </b> successfully!
    <br/>
    Thank you for sharing your private phone number <b><i> {this.props.authData.phone} </i></b>  
    <br/>
    Please confirm that your self-sovereign email is <u> {this.props.authData.email} </u>
    
    </p> 
    <br/>       
          </div>
        </div>
      </main>
    )
  }
}

export default Dashboard
