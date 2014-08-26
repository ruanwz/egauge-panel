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
ChartTabs= CR.React.createClass
  render: ->
    <div>
      <TabbedArea defaultActiveKey={0}>
        {for tab, i in ["kWh", "CO2", "Current", "Voltage", "WATTS", "kVAr", "kVArh"]
          do (tab, i)->
            if tab == "kWh"
              <TabPane key={i} tab={tab}>
                <OPieChart></OPieChart> 
              </TabPane> 
            else
              <TabPane key={i} tab={tab}>
              </TabPane> 

        }
      </TabbedArea>
    </div>
module.exports = ChartTabs
