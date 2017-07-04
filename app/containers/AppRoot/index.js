/*
 *
 * AppRoot
 *
 */

import React, { PropTypes } from 'react'
import { Provider } from 'react-redux'
import LanguageProvider from 'containers/LanguageProvider'

// eslint-disable-next-line react/prefer-stateless-function
class AppRoot extends React.PureComponent {
  static propTypes = {
    store: PropTypes.object.isRequired,
    messages: PropTypes.object.isRequired,
    children: PropTypes.node.isRequired,
  }

  render() {
    const { store, messages, children } = this.props
    return (
      <Provider store={store}>
        <LanguageProvider messages={messages}>
          {React.Children.only(children)}
        </LanguageProvider>
      </Provider>
    )
  }
}

export default AppRoot
