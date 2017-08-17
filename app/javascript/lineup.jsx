import React from 'react'
import PropTypes from 'prop-types'
import Drink from "./drink"
import RightControl from "./carousel/right_control"
import LeftControl from "./carousel/left_control"

export default class Lineup extends React.Component {
  constructor (props) {
    super(props)
    this.slideForward = this.slideForward.bind(this)
    this.slidePrevious = this.slidePrevious.bind(this)

    this.state = {
      focusIdx: 0
    }
  }

  static propTypes = {
    data: PropTypes.object
  }

  slideForward () {
    this.setState({ focusIdx: this.state.focusIdx + 1 })
  }

  slidePrevious () {
    this.setState({ focusIdx: this.state.focusIdx - 1 })
  }

  render () {
    const drinks = this.props.data.stocks.map((d, index) => {
      const isFocused = (this.state.focusIdx == index) ? true : false 
      return <Drink key={d.id} product={d.product} price={d.price} show={isFocused} />
    })

    return (
      <div className='lineup'>
          <RightControl slide={this.slideForward} />
          <LeftControl slide={this.slidePrevious} />
        <div className='drinks'>
          {drinks}
        </div>
      </div>
    )
  }
}
