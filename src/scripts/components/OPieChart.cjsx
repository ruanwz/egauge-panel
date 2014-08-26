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
json_data = require('../data/sample_pie_data.json')
OPieChart = CR.React.createClass
  draw_chart: (container, title)->
    $(container).highcharts
      chart:
        plotBackgroundColor: null
        plotBorderWidth: 1 #null,
        plotShadow: false
    
      title:
        text: title
    
      tooltip:
        pointFormat: "{series.name}: <b>{point.percentage:.1f}%</b>"
    
      plotOptions:
        pie:
          allowPointSelect: true
          cursor: "pointer"
          dataLabels:
            enabled: true
            format: "<b>{point.name}</b>: {point.percentage:.1f} %"
            style:
              color: (Highcharts.theme and Highcharts.theme.contrastTextColor) or "black"
    
      series: json_data

  componentDidMount: ->
    @draw_chart("#chart_container1", "AM")
    @draw_chart("#chart_container2", "PM")
    @draw_chart("#chart_container3", "DAY")
  render: ->
    style = 
      "min-width": "310px"
      height: "400px"
      "max-width": "600px"
      margin: "0 auto"
    <div className="row">
      <div className="col-md-4" id="chart_container1" style={style}></div>
      <div className="col-md-4" id="chart_container2" style={style}></div>
      <div className="col-md-4" id="chart_container3" style={style}></div>
    </div>
module.exports = OPieChart
