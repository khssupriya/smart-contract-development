(async () => {
    const contractAddress = '0x0fC5025C764cE34df352757e82f7B5c4Df39A836'
    console.log('start')
    
    const metadata = JSON.parse(await remix.call('fileManager', 'getFile', 'browser/contracts/artifacts/Owner.json'))
    const accounts = await web3.eth.getAccounts()
    
    let contract = new web3.eth.Contract(metadata.abi, contractAddress)
    
    const address = await contract.methods.getOwner().call({from: accounts[0]})
    console.log('Address_', address)

    console.log('end')
})()
