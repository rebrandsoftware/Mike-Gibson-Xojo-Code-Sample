#tag Class
Protected Class clsDrawing
	#tag Method, Flags = &h0
		Sub clearTempPicture()
		  me.myTempPicture = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawImage()
		  me.bRunning = true
		  me.tsStart = datetime.now
		  
		  
		  myThread = new Thread
		  AddHandler myThread.run, AddressOf threadAction
		  myThread.run
		  
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub myDelegate(p as Picture)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h1
		Protected Sub threadAction(sender as thread)
		  #Pragma unused sender
		  
		  //do all the image generation in a thread here, then finish
		  
		  //set the background to a random cat from the attributions
		  
		  dim r as new Random
		  dim i as integer
		  i = r.InRange(0, ubound(modAttributions.aAttributions))
		  
		  dim pBackground as picture
		  myImageAttribution = aAttributions(i)
		  dim sAuthor as string = myImageAttribution.sAuthor
		  pBackground = aAttributions(i).pImage
		  sName = myImageAttribution.sName
		  
		  
		  myTempPicture = new Picture(pBackground.Width, pBackground.Height, 32)
		  
		  
		  //fill in the background
		  myTempPicture = modGraphics.drawFillColor(myTempPicture, cColorFill)
		  
		  //draw the random cat picture slightly to the right and down
		  myTempPicture.graphics.DrawPicture pBackground, 100, 100, pBackground.Width, pBackground.Height
		  
		  //get a random number of cirles and draw them
		  i = r.InRange(me.iCirlesMin, me.iCirclesMax)
		  
		  dim j as integer
		  
		  for j = 0 to i
		    myTempPicture = modGraphics.drawCircle(myTempPicture, me.cColorFill, me.cColorLine)
		  next
		  
		  i = r.InRange(me.iLinesMin, me.iLinesMax)
		  
		  for j = 0 to i
		    myTempPicture = modGraphics.drawLine(myTempPicture, me.cColorLine)
		  next
		  
		  myTempPicture = modGraphics.drawText(myTempPicture, me.sName, me.cColorText)
		  myTempPicture = modGraphics.drawFooter(myTempPicture, "Photo by " + sAuthor + ", Wikimedia Creative Commons License- Programming by Mike Gibson - https://www.MikeGibson.work", me.cColorText)
		  
		  //mark duration
		  tsEnd = dateTime.now
		  dDuration = (tsEnd.SecondsFrom1970 - tsStart.SecondsFrom1970) * 1000
		  
		  //end run
		  bRunning = false
		  
		  //callback
		  myCallback.Invoke(myTempPicture)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bRunning As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cColorFill As color = Color.Orange
	#tag EndProperty

	#tag Property, Flags = &h0
		cColorLine As Color = Color.Green
	#tag EndProperty

	#tag Property, Flags = &h0
		cColorText As color = Color.Blue
	#tag EndProperty

	#tag Property, Flags = &h0
		dDuration As double
	#tag EndProperty

	#tag Property, Flags = &h0
		iCirclesMax As Integer = 300
	#tag EndProperty

	#tag Property, Flags = &h0
		iCirlesMin As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h0
		iLinesMax As Integer = 300
	#tag EndProperty

	#tag Property, Flags = &h0
		iLinesMin As Integer = 30
	#tag EndProperty

	#tag Property, Flags = &h0
		myCallback As myDelegate
	#tag EndProperty

	#tag Property, Flags = &h0
		myFinishedPicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		myImageAttribution As clsImageAttribution
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected myTempPicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		myThread As Thread
	#tag EndProperty

	#tag Property, Flags = &h0
		myTimer As timer
	#tag EndProperty

	#tag Property, Flags = &h0
		sName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tsEnd As datetime
	#tag EndProperty

	#tag Property, Flags = &h0
		tsStart As datetime
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
			Name="myFinishedPicture"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cColorFill"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cColorLine"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cColorText"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iCirclesMax"
			Visible=false
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iCirlesMin"
			Visible=false
			Group="Behavior"
			InitialValue="3"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLinesMax"
			Visible=false
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="iLinesMin"
			Visible=false
			Group="Behavior"
			InitialValue="3"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="sName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="bRunning"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="dDuration"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
