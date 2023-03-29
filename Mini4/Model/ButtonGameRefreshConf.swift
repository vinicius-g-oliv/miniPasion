//
//  ButtonGameRefreshConf.swift
//  Mini4
//
//  Created by Barbara Argolo on 28/03/23.
//

import SwiftUI

struct DeleteForm {
    var deleteForm: GeometryForm
}


func deleteAllForms() {
    //var itemDelete = DeleteForm(deleteForm: GeometryForm(id: form.id, color: form.color, symbol: form.symbol))
    //     var button = true
    var delete = GeometryForm.forms
    delete.removeAll()
    print("\(GeometryForm.forms) / \(delete)")
    
}
//
