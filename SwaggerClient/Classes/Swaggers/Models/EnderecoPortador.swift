//
// EnderecoPortador.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class EnderecoPortador: JSONEncodable {
    /** Nome Endereço  do portador do cartão. */
    public var logradouro: String?
    /** Nome cidade do portador do cartão. */
    public var cidade: String?
    /** Sigla do estado do portador do cartão. */
    public var estado: String?
    /** Código de endereçamento postal do portador do cartão. */
    public var codigoPostal: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["logradouro"] = self.logradouro
        nillableDictionary["cidade"] = self.cidade
        nillableDictionary["estado"] = self.estado
        nillableDictionary["codigoPostal"] = self.codigoPostal
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
