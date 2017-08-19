import React from 'react'
import PropTypes from 'prop-types'

export default class IndexControl extends React.Component {
  static propTypes = {
    focusIdx: PropTypes.number
  }

  render () {
    const index = []
    for (let i = 0; i < 6; i++) {
      if (i == this.props.focusIdx) {
        index.push(<div className="focus-index"></div>)
      } else {
        index.push(<div className="index"></div>)
      }
    }
    return (
      <div className="index-control-wrapper">
        <div className="index-control">
          {index}
        </div>
      </div>
    )
  }
}
