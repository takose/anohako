import React from 'react'
import PropTypes from 'prop-types'

export default class RightComponent extends React.Component {
  static propTypes = {
    slide: PropTypes.func,
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
        <div className="right-control-wrapper">
          <div
            className="carousel-control"
            onClick={(e) => {
              this.slide()
            }}>
            <i className="fa fa-chevron-right fa-5x" aria-hidden="true"></i>
          </div>
        </div>
      )
    } else {
      return(
        <div className="right-control-wrapper">
          <div className="carousel-control-inactive">
            <i className="fa fa-chevron-right fa-5x" aria-hidden="true"></i>
          </div>
        </div>
      )
    }
  }
}
