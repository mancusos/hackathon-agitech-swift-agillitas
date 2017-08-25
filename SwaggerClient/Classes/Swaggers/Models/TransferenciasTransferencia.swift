//
// TransferenciasTransferencia.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TransferenciasTransferencia: JSONEncodable {
    /** número identificador referente ao proxy do cartão origem de transferência. */
    public var idCartao: String?
    /** número identificador referente ao proxy do cartão destino de transferência. */
    public var idCartaoDestino: String?
    /** Valor monetário  a ser transferido. */
    public var valor: Double?
    /** Senha do cartão. */
    public var senha: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["idCartao"] = self.idCartao
        nillableDictionary["idCartaoDestino"] = self.idCartaoDestino
        nillableDictionary["valor"] = self.valor
        nillableDictionary["senha"] = self.senha
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
