CR = require '../cr.coffee'
React = require 'react/addons'
Jumbotron = require 'react-bootstrap/Jumbotron'
Button = require 'react-bootstrap/Button'
Panel = require 'react-bootstrap/Panel'
Well = require 'react-bootstrap/Well'
Label = require 'react-bootstrap/Label'
Indicator = require './Indicator.cjsx'
IndicatorBottom = require './IndicatorBottom.cjsx'
ChartTabs = require './ChartTabs.cjsx'
OLineChart = require './OLineChart.cjsx'
OBarChart = require './OBarChart.cjsx'
Dashboard = CR.React.createClass
  render: ->
    <div>
      <Indicator></Indicator>
      <ChartTabs></ChartTabs>
      <OLineChart></OLineChart> 
      <OBarChart></OBarChart> 
      <IndicatorBottom></IndicatorBottom>
      <this.props.activeRouteHandler/>
    </div>
module.exports = Dashboard
