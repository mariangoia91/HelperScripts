COMMAND=$1

NAME=$2

INITIALSCREEN=$3

function newScreen() {
echo "import React, { Component } from 'react';
import { Text, View } from 'react-native';

export default class $1 extends Component {
    render() {
        return (
            <View>
            	<Text>Home screen</Text>
            </View>
        );
    }
}" > $1.js
}

if [ $COMMAND = "newscreen" ]; then
newScreen $NAME
echo "Created new screen"
fi

if [ $COMMAND = "init" ]; then

#init project
expo-cli init $NAME
cd $NAME
npm init

#install packages
expo install react-navigation react-native-gesture-handler react-native-reanimated react-native-screens react-navigation-stack
expo install axios

#create screens folder
mkdir src
cd src
mkdir screens
cd screens

#create home screen
newScreen $INITIALSCREEN

cd ../..

#edit App.js with navigation stack
echo > App.js
echo "import { createAppContainer } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';

import HomeScreen from './src/screens/$INITIALSCREEN';

const navigator = createStackNavigator({
  Home: $INITIALSCREEN,
}, 
{
  initialRouteName: 'Home',
  defaultNavigationOptions: {
    title: 'Home Screen'
  }
});

export default createAppContainer(navigator);" > App.js

#start project
expo start
fi