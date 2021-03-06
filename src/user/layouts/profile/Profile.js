import React, { Component } from 'react'

class Profile extends Component {
  constructor(props, { authData }) {
    super(props)
    authData = this.props
  }

  render() {
    return(
      <main className="container">
        <div className="pure-g">
          <div className="pure-u-1-1">
            <h1>Profile</h1>
            <p>Change these details in UPort to see them reflected here.</p>
            <p>
              <strong>Name</strong><br />
              {this.props.authData.name}         
            </p>
            <p>
              <strong>Email</strong><br />
              {this.props.authData.email}          
            </p>
            <p>
              <strong>Phone</strong><br />
              {this.props.authData.phone}        
            </p>
            <p>
              <strong>Country</strong><br />
              {this.props.authData.country}        
            </p>
            <p>
              <strong>Push Token</strong><br />
              {this.props.authData.pushToken}        
            </p>
            <p>
              <strong>Decentralized Ethereum Identity</strong><br />
              {this.props.authData.did}        
            </p>
            <p>
              <strong>μPort Network Address</strong><br />
              {this.props.authData.networkAddress}        
            </p>
            <p>
              <strong>Public Encryption Key</strong><br />
              {this.props.authData.publicEncKey}        
            </p>
          </div>
        </div>
      </main>
    )
  }
}

export default Profile