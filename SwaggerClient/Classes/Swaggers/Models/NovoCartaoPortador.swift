//
// NovoCartaoPortador.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class NovoCartaoPortador: JSONEncodable {
    /** Nome do portador do cartão. */
    public var nome: String?
    /** Sobrenome do portador do cartão. */
    public var sobrenome: String?
    /** Data de nascimento do portador do cartão (YYYY-MM-DD). */
    public var dataNascimento: NSDate?
    /** Numero do cadastro de pessoas física do portador.  Não deve conter pontos ou hífen. */
    public var cpf: String?
    public var contato: CartoesCartaoPortadorContato?
    public var endereco: CartoesCartaoPortadorEndereco?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["nome"] = self.nome
        nillableDictionary["sobrenome"] = self.sobrenome
        nillableDictionary["dataNascimento"] = self.dataNascimento?.encodeToJSON()
        nillableDictionary["cpf"] = self.cpf
        nillableDictionary["contato"] = self.contato?.encodeToJSON()
        nillableDictionary["endereco"] = self.endereco?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}