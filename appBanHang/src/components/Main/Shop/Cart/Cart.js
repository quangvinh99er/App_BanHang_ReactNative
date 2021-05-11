import React, {useEffect, useState} from 'react';
import {
  Platform,
  DeviceEventEmitter,
  NativeModules,
  NativeEventEmitter,
  Button,
  Dimensions,
  Text,
  View,
  Image,
  StyleSheet,
  Alert,
} from 'react-native';
import {FlatList, TouchableOpacity} from 'react-native-gesture-handler';
import global from '../../../global';

import RNMomosdk from 'react-native-momosdk';
const RNMomosdkModule = NativeModules.RNMomosdk;
const EventEmitter = new NativeEventEmitter(RNMomosdkModule);

const merchantname = 'Thế giới phụ kiện';
const merchantcode = 'CGV01';
const merchantNameLabel = 'Nhà cung cấp';
const billdescription = 'Mua phụ kiện';
const enviroment = '0'; //"0": SANBOX , "1": PRODUCTION

import {senOrder} from '../../../../API/senOder';
import {payment} from '../../../../API/payment';
import {getToken} from '../../../../API/getToken';
const {width, height} = Dimensions.get('window');

function onFail() {
  Alert.alert('Notice', 'Order fail, please check login to order', [
    {
      text: 'OK',
    },
  ]);
}

function onSuccessPayment() {
  Alert.alert('Notice', 'payment successfully', [
    {
      text: 'OK',
    },
  ]);
}

export default function Cart(props) {
  const [carts, setCarts] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);

  function onSuccess(id_bill, price) {
    Alert.alert('Notice', 'Order successfully', [
      {
        text: 'OK',
      },
      {
        text: 'Payment',
        onPress: () => {
          onPress(id_bill, price);
        },
      },
    ]);
  }

  const onSenOrder = async (arrayDetailOrder) => {
    try {
      const token = await getToken();
      const rs = await senOrder(token, arrayDetailOrder);

      const res = JSON.parse(rs);

      if (res.status === 'THEM_THANH_CONG') {
        // xoa gio hang trong bo nho
        global.deleteOrder();
        if (global.getOrders !== null) {
          global.getOrders();
        }

        onSuccess(res.id_bill, res.price);
      } else {
        onFail();
      }
    } catch (error) {
      onFail();
    }
  };

  const onPress = async (id_bill, price) => {
    let jsonData = {};
    jsonData.enviroment = enviroment; //SANBOX OR PRODUCTION
    jsonData.action = 'gettoken'; //DO NOT EDIT
    jsonData.merchantname = merchantname; //edit your merchantname here
    jsonData.merchantcode = merchantcode; //edit your merchantcode here
    jsonData.merchantnamelabel = merchantNameLabel;
    jsonData.description = billdescription;
    jsonData.amount = totalPrice * 22995; //order total amount

    let rightNow = new Date();
    let res = rightNow.toISOString().slice(0, 10).replace(/-/g, '');

    jsonData.orderId = 'ID' + res + id_bill;
    jsonData.orderLabel = 'Ma don hang';
    jsonData.appScheme = 'momocgv20170101'; // iOS App Only , match with Schemes Indentify from your  Info.plist > key URL types > URL Schemes

    let dataPayment = await RNMomosdk.requestPayment(jsonData);

    let newPayment = {
      bill_id: id_bill,
      order_id: dataPayment.orderId,
      phonenumber: dataPayment.phonenumber,
      amount: totalPrice,
    };

    try {
      const token = await getToken();
      const rs = await payment(token, newPayment);

      const res = JSON.parse(rs);

      if (res.status === 'THANH_TOAN_THANH_CONG') {
        onSuccessPayment();
      } else {
        onFail();
      }
    } catch (error) {
      onFail();
    }
  };

  useEffect(() => {
    let newTotalPrice = 0;
    props.cartArray.forEach((element) => {
      newTotalPrice =
        newTotalPrice + Number(element.product.price * element.quatity);
    });
    setCarts(props.cartArray);
    setTotalPrice(newTotalPrice);
  }, [carts, props.cartArray]);

  useEffect(() => {
    EventEmitter.addListener(
      'RCTMoMoNoficationCenterRequestTokenReceived',
      (response) => {
        try {
          console.log('<MoMoPay>Listen.Event::' + JSON.stringify(response));
          if (response && response.status == 0) {
            //SUCCESS: continue to submit momoToken,phonenumber to server
            let fromapp = response.fromapp; //ALWAYS:: fromapp==momotransfer
            let momoToken = response.data;
            let phonenumber = response.phonenumber;
            let message = response.message;
            let orderId = response.refOrderId;
          } else {
            //let message = response.message;
            //Has Error: show message here
          }
        } catch (ex) {}
      },
    );
    //OPTIONAL
    EventEmitter.addListener(
      'RCTMoMoNoficationCenterRequestTokenState',
      (response) => {
        console.log('<MoMoPay>Listen.RequestTokenState:: ' + response.status);
        // status = 1: Parameters valid & ready to open MoMo app.
        // status = 2: canOpenURL failed for URL MoMo app
        // status = 3: Parameters invalid
      },
    );
  }, []);

  const incrQuantity = (productId) => {
    global.incrQuantity(productId);
  };

  const decrQuantity = (productId) => {
    global.decrQuantity(productId);
  };

  return (
    <View style={styles.Wraper}>
      <View style={{flex: 9}}>
        <FlatList
          data={carts}
          keyExtractor={(item) => item.product.id}
          extraData={carts}
          renderItem={({item, index}) => (
            <View style={styles.ProductContainer} key={item.product.id}>
              <View style={styles.ImgViewProduct}>
                <Image
                  source={{
                    uri: `http://192.168.10.64/app/images/product/${item.product.images[0]}`,
                  }}
                  style={styles.ImageProductStyle}
                />
              </View>
              <View style={styles.ProductInfo}>
                <View style={styles.FirstAndLastRowStyle}>
                  <Text style={styles.ProductName}>{item.product.name}</Text>
                  <TouchableOpacity
                    onPress={() => {
                      global.remmoveProduct(item.product.id);
                    }}>
                    <Text style={{fontSize: 18}}>X</Text>
                  </TouchableOpacity>
                </View>
                <Text style={styles.ProductPrice}> {item.product.price} $</Text>
                <View style={styles.FirstAndLastRowStyle}>
                  <View style={styles.LastRowProductInfo}>
                    <TouchableOpacity
                      onPress={() => {
                        incrQuantity(item.product.id);
                      }}>
                      <Text style={styles.TextInitProduct}>+</Text>
                    </TouchableOpacity>
                    <Text style={styles.TextInitProduct}>{item.quatity}</Text>
                    <TouchableOpacity
                      onPress={() => {
                        decrQuantity(item.product.id);
                      }}>
                      <Text style={[styles.TextInitProduct]}>-</Text>
                    </TouchableOpacity>
                  </View>
                  <View style={styles.DetailTextStyle}>
                    <TouchableOpacity
                      onPress={() => {
                        props.navigation.navigate('DetailProduct', {
                          product: item.product,
                        });
                      }}>
                      <Text>Show Detail</Text>
                    </TouchableOpacity>
                  </View>
                </View>
              </View>
            </View>
          )}
        />
      </View>
      <TouchableOpacity
        style={styles.ButtonOrderSize}
        onPress={() => {
          const arrayDetail = carts.map((item) => {
            return {
              id: item.product.id,
              quantity: item.quatity,
            };
          });
          onSenOrder(arrayDetail);
        }}>
        <View style={styles.ButtonOrder}>
          <Text>TOTAL {totalPrice}$ CHECKOUT NOW</Text>
        </View>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  Wraper: {
    flex: 1,
    backgroundColor: '#DADADA',
  },
  ProductContainer: {
    height: height * 0.215,
    backgroundColor: '#fff',
    margin: 10,
    flexDirection: 'row',
    padding: 10,
  },
  ImgViewProduct: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  ImageProductStyle: {
    width: width * 0.28,
    height: (width * 0.28 * 452) / 361 + 10,
  },
  ProductInfo: {
    flex: 1,
    justifyContent: 'space-between',
    marginLeft: 10,
  },
  FirstAndLastRowStyle: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  ProductName: {fontSize: 20},
  ProductPrice: {fontSize: 20, color: '#D3659B'},
  LastRowProductInfo: {
    width: width * 0.29,
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  TextInitProduct: {fontSize: 22},
  DetailTextStyle: {alignItems: 'flex-end', marginTop: 4},
  ButtonOrder: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#2ABA99',
  },
  ButtonOrderSize: {height: height / 14},
});
