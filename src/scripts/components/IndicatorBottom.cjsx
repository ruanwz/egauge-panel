CR = require '../cr.coffee'
React = require 'react/addons'
Jumbotron = require 'react-bootstrap/Jumbotron'
Button = require 'react-bootstrap/Button'
Panel = require 'react-bootstrap/Panel'
Well = require 'react-bootstrap/Well'
Label = require 'react-bootstrap/Label'
#require('../../styles/indicator.css')
IndicatorBottom = CR.React.createClass
  render: ->
    <div>
      <Panel>
        <div className="row">
          {for num in [1..6]
            do ->
              <div className="col-md-2 digital">
                <dl>
                  <dt>WATTS NOW</dt>
                  <dd><span id="watt_now">6,042</span><span class="unit">W</span></dd>
                </dl>
              </div>
          }
        </div>
      </Panel>
    </div>
module.exports = IndicatorBottom
