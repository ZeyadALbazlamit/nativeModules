/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, { useEffect } from 'react';
import {SafeAreaView, StyleSheet, View,NativeModules} from 'react-native';

function App(): React.JSX.Element {
  // console.log(NativeModules?.Counter?.getConstants())
  // console.log(NativeModules?.Counter?.increment((count:number)=>console.log(count)))
console.log(NativeModules.Counter)
useEffect(()=>{
  NativeModules?.Counter?.decrement()
  .then((count:number)=>console.log("count from decrement is ",count))
  .catch((e:string)=>{console.log(e)})
},[])
  return (
    <SafeAreaView>
      <View
        style={{
          flex: 1,
          justifyContent: 'center',
          alignContent: 'center',
          alignItems: 'center',
        }}></View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
  },
  highlight: {
    fontWeight: '700',
  },
});

export default App;

