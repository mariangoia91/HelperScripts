COMMAND=$1
FILENAME=$2

if [ $COMMAND == "newscreen" ] 
then

echo "import React from 'react';
import {StyleSheet, View, Text} from 'react-native';

const $FILENAME = function() {
    return <View>
    </View>
};

const styles = StyleSheet.create ({

});

export default $FILENAME;" > $FILENAME.js
fi