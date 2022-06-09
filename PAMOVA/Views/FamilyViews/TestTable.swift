//
//  TestTable.swift
//  PAMOVA
//
//  Created by Rodney Dyer on 6/9/22.
//

import DLab
import SwiftUI

struct TestTable: View {
    @Binding var stratum: Stratum
    
    var body: some View {
        Table( stratum.allIndividuals) {
            TableColumn("ID", value: \.momID)
            TableColumn("Offspring", value: \.offID)
        }
    }
}

struct TestTable_Previews: PreviewProvider {
    static var previews: some View {
        TestTable( stratum: .constant( Stratum.DefaultFamily() ) )
    }
}
