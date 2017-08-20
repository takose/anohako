import React from 'react'
import PropTypes from 'prop-types'

export default class Drink extends React.Component {
  static propTypes = {
    product: PropTypes.object,
    price: PropTypes.number,
    show: PropTypes.bool
  }

  render () {
    if (this.props.show) {
      console.log({backgroundImage: `url(${this.props.product.image_url})`})
      return (
        <div className='drink-wrapper'>
          <div className='drink'>
            <div className="drink-img" style={{backgroundImage: `url(${this.props.product.image_url})`}} />
            <div className='price'>
              ¥{this.props.price}
            </div>
          </div>
        </div>
      )
    }
    else {
      return false
    }
  }
}
