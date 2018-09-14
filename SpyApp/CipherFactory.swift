import Foundation

struct CipherFactory {

    private var ciphers: [String: Cipher] = [
        "cesar": CeaserCipher(),
        "someOtherCipher": CeaserCipher()
        "12z2dha2": CeaserCipher()
        "ZHZHAhXH7787s" : CeaserCipher()
    ]

    func cipher(for key: String) -> Cipher {
        return ciphers[key]!
    }
    

    func AlphanumericCesarCipher(text: String, num: Int) -> String{
        let cipher: String = text
        var cipher2: String = cipher.uppercased()
        
        if cipher2 == "Z"{
            cipher2 = "0"
        }
        else if cipher2 == "9"{
            cipher2 = "A"
        }
        else if cipher2 == "A"{
            cipher2 = "9"
        }
        else if cipher2 == "0"{
            cipher2  = "Z"
        }
        return cipher2
    }
    
    
}
