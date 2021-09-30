#tag Class
Protected Class clsImageAttribution
	#tag Property, Flags = &h0
		pImage As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		sAuthor As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sLicense As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sURL As string
	#tag EndProperty


	#tag Constant, Name = CONST_ATT_WC_CCASA_20, Type = String, Dynamic = False, Default = \"Creative Commons Attribution Share-Alike 2.0 Generic", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CONST_ATT_WC_CCASA_40, Type = String, Dynamic = False, Default = \"Creative Commons Attribution Share-Alike 4.0 International", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sAuthor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sLicense"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
