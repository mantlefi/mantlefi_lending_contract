import TokenLendingPlace from 0x04

pub fun main(): {String: UFix64} {
    return {"flowSupplyApy": TokenLendingPlace.mFlowInterestRate * TokenLendingPlace.getFlowBorrowPercent(), "fusdSupplyApy": TokenLendingPlace.mFUSDInterestRate * TokenLendingPlace.getFUSDBorrowPercent(), "bltSupplyApy": TokenLendingPlace.mBLTInterestRate * TokenLendingPlace.getBltBorrowPercent()}
}