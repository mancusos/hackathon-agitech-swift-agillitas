//
// NovoCartao.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class NovoCartao: JSONEncodable {
    /** Número identificador referente ao proxy do cartão. */
    public var idCartao: String?
    /** Valor monetário  a ser creditado na conta do cartão. */
    public var valor: Double?
    /** Contrassenha do cartão */
    public var contrasenha: String?
    public var portador: CartoesCartaoPortador?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["valor"] = self.valor
        nillableDictionary["contrasenha"] = self.contrasenha
        nillableDictionary["portador"] = self.portador?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
