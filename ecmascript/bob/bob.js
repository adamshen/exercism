class Bob {
    hey(message) {
        let response = ''

        if (message.match(/^[^a-z|\xfc\xe4]*$/) && message.match(/[A-Z]+/)) {
            response = 'Whoa, chill out!'
        } else if (message.match(/\?$/)) {
            response = 'Sure.'
        } else if (message.match(/^\s*$/)) {
            response = 'Fine. Be that way!'
        } else {
            response = 'Whatever.'
        }

        return response
    }
}

export default Bob;
