// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
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
      return <div></div>
    }
  }
}
