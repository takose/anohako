import React from 'react'
import PropTypes from 'prop-types'
import Drink from "./drink"
import RightControl from "./carousel/right_control"
import LeftControl from "./carousel/left_control"
import IndexControl from "./carousel/index_control"

export default class Lineup extends React.Component {
  constructor (props) {
    super(props)
    this.slideForward = this.slideForward.bind(this)
    this.slidePrevious = this.slidePrevious.bind(this)

    this.state = {
      focusIdx: 0,
      isRightActive: true,
      isLeftActive: false
    }
  }

  static propTypes = {
    data: PropTypes.object
  }

  slideForward () {
    if (this.state.focusIdx == 4) {
      this.setState({ isRightActive: false })
    }
    if (!this.state.isLeftActive) {
      this.setState({ isLeftActive: true })
    }
    this.setState({ focusIdx: this.state.focusIdx + 1 })
  }

  slidePrevious () {
    this.setState({ focusIdx: this.state.focusIdx - 1 })
    if (this.state.focusIdx <= 1) {
      this.setState({ isLeftActive: false })
    }
    if (!this.state.isRightActive) {
      this.setState({ isRightActive: true })
    }
  }

  render () {
    const drinks = this.props.data.stocks.map((d, index) => {
      const isFocused = (this.state.focusIdx == index) ? true : false 
      return <Drink key={d.id} product={d.product} price={d.price} show={isFocused} />
    })

    return (
      <div className='lineup'>
        <LeftControl slide={this.slidePrevious} isActive={this.state.isLeftActive} />
        <div className="drinks-wrapper">
          <div className='drinks'>
            {drinks}
          </div>
          <IndexControl focusIdx={this.state.focusIdx} />
        </div>
        <RightControl slide={this.slideForward} isActive={this.state.isRightActive} />
      </div>
    )
  }
}
