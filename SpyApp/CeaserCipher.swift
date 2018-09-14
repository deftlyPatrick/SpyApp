import Foundation

protocol Cipher {
    func encode(plaintext: String, secret: String) -> String
}

extension Cipher{
    func decrypt (plaintext: String, secret: String) -> String{
        return plaintext
    }
}


struct CeaserCipher: Cipher {
    
    func encode(plaintext: String, secret: String) -> String {
        var encoded = ""
        var shiftBy = UInt32(secret)!
        
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            let shiftedUnicode = unicode + shiftBy
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            encoded = encoded + shiftedCharacter
        }
        return encoded
    }
}
