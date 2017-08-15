/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import React from 'react'
import ReactDOM from 'react-dom'
import Drink from "../drink"

const Lineup = props => (
  <div className='lineup'>
    {props.drinks}
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('lineup')
  const data = JSON.parse(node.getAttribute('data'))

  this.state = {
    focusIdx: 0
  }
  const drinks = data.stocks.map((d, index) => {
    const isFocused = (this.state.focusIdx == index) ? true : false 
    return <Drink key={d.id} product={d.product} price={d.price} show={isFocused} />
  })
  ReactDOM.render(<Lineup key={data.id} drinks={drinks} />, node)
})
