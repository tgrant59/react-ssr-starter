/*
 * HomePage
 *
 * This is the first thing users see of our App, at the '/' route
 */

import React from 'react'
import styled from 'styled-components'
import { FormattedMessage } from 'react-intl'
import messages from './messages'

const Header = styled.h1`margin-top: 0;`

// eslint-disable-next-line react/prefer-stateless-function
export default class HomePage extends React.PureComponent {
  render() {
    return (
      <Header>
        <FormattedMessage {...messages.header} />
      </Header>
    )
  }
}
