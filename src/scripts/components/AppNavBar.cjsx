CR = require '../cr.coffee'
Nav = require 'react-bootstrap/Nav'
Navbar = require 'react-bootstrap/Navbar'
NavItem = require 'react-bootstrap/NavItem'
NavItemLink = require('react-router-bootstrap').NavItemLink
MenuItem = require 'react-bootstrap/MenuItem'
DropdownButton = require 'react-bootstrap/DropdownButton'
ProgressBar = require 'react-bootstrap/ProgressBar'
React = require 'react/addons'
AppNavBar = CR.React.createClass
  render: ->
    <div>
      <Navbar>
        <Nav>
          <NavItemLink key={1} to="dashboard">Dashboard</NavItemLink>
          <NavItemLink key={2} to="compare">Compare</NavItemLink>
          <NavItemLink key={3} to="devices">Devices</NavItemLink>
          <NavItemLink key={4} to="eventstab">Events</NavItemLink>
          <NavItemLink key={5} to="steps">Steps</NavItemLink>
        </Nav>
      </Navbar>
    </div>
module.exports = AppNavBar
