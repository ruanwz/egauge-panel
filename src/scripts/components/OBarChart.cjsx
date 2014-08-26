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
json_data = require('../data/sample_bar_data.json')
OBarChart = CR.React.createClass
  draw_chart: (container, title)->

    $(container).highcharts
      chart:
        type: "column"

      title:
        text: "Stacked column chart"

      xAxis:
        categories: [
          "OCC-1"
          "OCC-2"
          "OCC-3"
          "OCC-4"
          "OCC-5"
          "OCC-6"
        ]

      yAxis:
        min: 0
        title:
          text: "Total fruit consumption"

      tooltip:
        pointFormat: "<span style=\"color:{series.color}\">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>"
        shared: true

      plotOptions:
        column:
          stacking: "percent"

      series: json_data

  componentDidMount: ->
    @draw_chart("#barchart_container", "AM")
  render: ->
    style = 
      "min-width": "310px"
      height: "400px"
      margin: "0 auto"
    <div className="row">
      <div className="col-md-12" id="barchart_container" style={style}></div>
    </div>
module.exports = OBarChart
