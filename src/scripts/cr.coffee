global.$ = global.jQuery = jQuery = $ = require('jquery')
_ = require('underscore')
Backbone = require('backbone')
Backbone.$ = $
Flux = {}
Flux.Dispatcher = require 'flux/examples/flux-chat/js/dispatcher/Dispatcher'
if jest?
  React = require 'react/addons'
  TestUtils = React.addons.TestUtils
else
  React = require 'react'
  TestUtils = {}
PageHeader = require 'react-bootstrap/PageHeader'
Button = require 'react-bootstrap/Button'
Nav = require 'react-bootstrap/Nav'
Navbar = require 'react-bootstrap/Navbar'
NavItem = require 'react-bootstrap/NavItem'
DropdownButton = require 'react-bootstrap/DropdownButton'
MenuItem = require 'react-bootstrap/MenuItem'
Grid = require 'react-bootstrap/Grid'
Row = require 'react-bootstrap/Row'
Col = require 'react-bootstrap/Col'
Modal = require 'react-bootstrap/Modal'
Input = require 'react-bootstrap/Input'
Glyphicon = require 'react-bootstrap/Glyphicon'
bootstrap =
  Button: Button
  PageHeader: PageHeader
  Nav: Nav
  Navbar: Navbar
  NavItem: NavItem
  DropdownButton: DropdownButton
  MenuItem: MenuItem
  Grid: Grid
  Row: Row
  Col: Col
  Modal: Modal
  Input: Input
  Glyphicon: Glyphicon

CR =
  Flux: Flux
  React: React
  TestUtils: TestUtils
  jQuery: jQuery
  d: React.DOM
  b: bootstrap
  _: _
  Backbone: Backbone

module.exports = CR

