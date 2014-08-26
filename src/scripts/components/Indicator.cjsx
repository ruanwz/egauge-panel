CR = require '../cr.coffee'
React = require 'react/addons'
Jumbotron = require 'react-bootstrap/Jumbotron'
Button = require 'react-bootstrap/Button'
Panel = require 'react-bootstrap/Panel'
Well = require 'react-bootstrap/Well'
Label = require 'react-bootstrap/Label'
require('../../styles/indicator.css')
Indicator = CR.React.createClass
  render: ->
    <div>
      <Panel>
        <div className="row">
          {for num in [1..6]
            do ->
              <div className="col-md-2 digital">
                <dl>
                  <dt>COST per kWh</dt>
                  <dd><span className="unit">HKD$</span><span>1.0</span></dd>
                </dl>
              
              </div>
          }
        </div>
      </Panel>
    </div>
module.exports = Indicator
