import FungibleToken from 0x01
import FUSD from 0x03

pub fun main(address: Address): UFix64 {
    let account = getAccount(address)

    let vaultRef = account.getCapability(/public/fusdBalance)!
        .borrow<&FUSD.Vault{FungibleToken.Balance}>()
        ?? panic("Could not borrow balance reference to the Vault")

    return vaultRef.balance
}