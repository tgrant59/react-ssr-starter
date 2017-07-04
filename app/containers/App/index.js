/**
 *
 * App.js
 *
 * This component is the skeleton around the actual pages, and should only
 * contain code that should be seen on all pages. (e.g. navigation bar)
 */

import React from 'react'

// eslint-disable-next-line react/prefer-stateless-function
export default class App extends React.PureComponent {
  static propTypes = {
    children: React.PropTypes.node,
  }

  render() {
    return (
      <div>
        {React.Children.toArray(this.props.children)}
      </div>
    )
  }
}
