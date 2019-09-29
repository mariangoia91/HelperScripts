COMMAND=$1
FILENAME=$2

if [ $COMMAND = "newscreen" ]; then
echo "import React, { Component } from 'react';
import { Text, View } from 'react-native';

export default class $FILENAME extends Component {
    render() {
        return (
            <View>
            </View>
        );
    }
}" > $FILENAME.js
fi