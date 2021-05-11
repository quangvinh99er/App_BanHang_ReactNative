import React, {Component} from 'react';
import {StatusBar, Text, View} from 'react-native';
import {ScrollView} from 'react-native-gesture-handler';
import Collection from './Collection';
import Category from './Category';
import TopProduct from './TopProduct';

export class HomeView extends Component {
  constructor(props) {
    super(props);
    this.state = {types: [], TopProducts: [], Banners: []};
  }

  componentDidMount() {
    fetch('http://192.168.10.64/app')
      .then((res) => res.json()) // asyn funtion
      .then((resJSON) => {
        const {type, product, banner} = resJSON;
        this.setState({types: type, TopProducts: product, Banners: banner});
      });
  }
  render() {
    return (
      <View style={{backgroundColor: '#D3D2D0', flex: 1}}>
        <StatusBar hidden />
        <ScrollView>
          <Category
            {...this.props}
            types={this.state.Banners}
            name={'BANNER'}
          />
          <Category
            {...this.props}
            types={this.state.types}
            name={'CATEGORY'}
          />
          <TopProduct {...this.props} TopProducts={this.state.TopProducts} />
        </ScrollView>
      </View>
    );
  }
}
export default HomeView;
