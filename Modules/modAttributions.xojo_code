#tag Module
Protected Module modAttributions
	#tag Method, Flags = &h0
		Sub initializeAttributions()
		  dim c as clsImageAttribution
		  
		  //cat01.jpeg
		  c = new clsImageAttribution
		  c.pImage = Cat01
		  c.sAuthor = "Eatcha"
		  c.sLicense = clsImageAttribution.CONST_ATT_WC_CCASA_40
		  c.sName = "Cat yawning in park.jpg"
		  c.sURL = "https://commons.wikimedia.org/wiki/File:Cat_yawning_in_park.jpg"
		  aAttributions.Append(c)
		  
		  //cat02.jpeg
		  c = new clsImageAttribution
		  c.pImage = Cat02
		  c.sAuthor = "Tadeáš Bednarz"
		  c.sLicense = clsImageAttribution.CONST_ATT_WC_CCASA_40
		  c.sName = "Siberian black tabby blotched cat 04.jpg"
		  c.sURL = "https://commons.wikimedia.org/wiki/File:Siberian_black_tabby_blotched_cat_04.jpg"
		  aAttributions.Append(c)
		  
		  //cat03.jpeg
		  c = new clsImageAttribution
		  c.pImage = Cat03
		  c.sAuthor = "Nickolas Titkov"
		  c.sLicense = clsImageAttribution.CONST_ATT_WC_CCASA_20
		  c.sName = "BEN Bengalian kitten (4492540155).jpg"
		  c.sURL = "https://commons.wikimedia.org/wiki/File:BEN_Bengalian_kitten_(4492540155).jpg"
		  aAttributions.Append(c)
		  
		  //cat04.jpeg
		  c = new clsImageAttribution
		  c.pImage = Cat04
		  c.sAuthor = "Graceswikifun"
		  c.sLicense = clsImageAttribution.CONST_ATT_WC_CCASA_40
		  c.sName = "Ragdoll Cat.jpg"
		  c.sURL = "https://commons.wikimedia.org/wiki/File:Ragdoll_Cat.jpg"
		  aAttributions.Append(c)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		aAttributions() As clsImageAttribution
	#tag EndProperty


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
			Name="aAttributions()"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
