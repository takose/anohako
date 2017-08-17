import React from 'react'
import PropTypes from 'prop-types'

export default class RightComponent extends React.Component {
  static propTypes = {
    slide: PropTypes.func
  }

  constructor (props) {
    super(props)
    this.slide = this.slide.bind(this)
  }

  slide () {
    this.props.slide()
  }

  render () {
    return (
      <div className="right-control-wrapper">
        <div
          className="right-control"
          onClick={(e) => {
            this.slide()
          }}>
        </div>
      </div>
    )
  }
}
