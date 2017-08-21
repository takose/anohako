import React from 'react'
import PropTypes from 'prop-types'

export default class Drink extends React.Component {
  static propTypes = {
    product: PropTypes.object,
    price: PropTypes.number,
    position: PropTypes.number,
    show: PropTypes.bool
  }

  render () {
    if (this.props.show) {
      return (
        <div className='drink-wrapper'>
          <div className='drink'>
            <div className="drink-img" style={{backgroundImage: `url(${this.props.product.image_url})`}} />
            <div className='buy'>
              <form action="/shelves/buy" method="post" className="buy-button">
                <i className="fa fa-check" aria-hidden="true"></i>
                <input type="hidden" name="position" value={this.props.position} />
                <input type="submit" className="buy-button" value="Buy" />
              </form>
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
