CR = require '../cr.coffee'
React = require 'react/addons'
Jumbotron = require 'react-bootstrap/Jumbotron'
Button = require 'react-bootstrap/Button'
Panel = require 'react-bootstrap/Panel'
Well = require 'react-bootstrap/Well'
Label = require 'react-bootstrap/Label'
TabbedArea = require 'react-bootstrap/TabbedArea'
TabPane = require 'react-bootstrap/TabPane'
OPieChart = require './OPieChart.cjsx'
require('../../styles/indicator.css')
require('../vendor/highcharts-all.js')
json_data = require('../data/sample_line_data.json')
OLineChart = CR.React.createClass
  draw_chart: (container, title)->
    $(container).highcharts
      title:
        text: title
        x: -20 #center

      subtitle:
        text: ""
        x: -20

      xAxis:
        categories: [
          "12AM"
          "3AM"
          "6AM"
          "9AM"
          "12PM"
          "3PM"
          "6PM"
          "9PM"
        ]

      yAxis:
        title:
          text: "OCCUPENCY LEVEL"

        plotLines: [
          value: 0
          width: 1
          color: "#808080"
        ]

      tooltip:
        valueSuffix: "°C"

      legend:
        layout: "vertical"
        align: "right"
        verticalAlign: "middle"
        borderWidth: 0

      series: json_data


  componentDidMount: ->
    @draw_chart("#linechart_container", "AM")
  render: ->
    style = 
      "min-width": "310px"
      height: "400px"
      margin: "0 auto"
    <div className="row">
      <div className="col-md-12" id="linechart_container" style={style}></div>
    </div>
module.exports = OLineChart
