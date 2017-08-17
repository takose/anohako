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
    return (
      <div className='drink'>
        <div className='product-image-wrapper'>
          <img className='product-image' src={this.props.product.image_url} width='100%' />
        </div>
        <div className='product-price'>
          {this.props.price}
        </div>
      </div>
    )
    }
    else {
      return false
    }
  }
}
