import React from 'react'
import PropTypes from 'prop-types'

export default class Drink extends React.Component {
  static propTypes = {
    product: PropTypes.object,
    price: PropTypes.number,
    position: PropTypes.number,
    show: PropTypes.bool
  }

  onBought (pos) {
    const motor = new ws("webmo06.local")
    motor.rotate(90)
    setTimeout(() => { motor.stop() }, 2000)
  }

  render () {
    return (
      <div className='drink'>
        <div className="drink-img" style={{backgroundImage: `url(${this.props.product.image_url})`}} />
        <a className='buy'
          onClick={(e) => {
            e.preventDefault()
            this.onBought(this.props.position)
          }}
        >
          ¥{this.props.price}
        </a>
      </div>
    )
  }
}
