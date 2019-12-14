import { Connect, SimpleSigner } from 'uport-connect'

//export let uport = new Connect('TruffleBox')

export let uport = new Connect('Authentikos', {
    clientId: '2opkTcQyJE62C9Ky5nY4cqvPk4vBbWGSmWG',
    network: 'rinkeby',
    signer: SimpleSigner('2aba5f57a85676ddb79d43a03577315d56ddf06ca1dbe81a22ae72abf005872d')
  })

export const web3 = uport.getWeb3()
