import React from 'react'
import PropTypes from 'prop-types'

export default class LeftComponent extends React.Component {
  static propTypes = {
    slide: PropTypes.func.isRequired,
    isActive: PropTypes.bool
  }

  constructor (props) {
    super(props)
    this.slide = this.slide.bind(this)
  }

  slide () {
    this.props.slide()
  }

  render () {
    if (this.props.isActive) {
      return (
        <div className="left-control-wrapper">
          <div
            className="left-control"
            onClick={(e) => {
              this.slide()
            }}>
          </div>
        </div>
      )
    } else {
      return (
        <div className="left-control-wrapper">
          <div className="left-control-inactive">
          </div>
        </div>
      )
    }
  }
}
