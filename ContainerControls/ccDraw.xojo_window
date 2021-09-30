#tag Window
Begin ContainerControl ccDraw
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackgroundColor=   False
   Height          =   144
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   554
   Begin GroupBox grpName
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Name"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   135
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   165
      Begin Canvas cnvThumb
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         Height          =   100
         Index           =   -2147483648
         InitialParent   =   "grpName"
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   25
         Transparent     =   True
         Visible         =   True
         Width           =   125
      End
   End
   Begin PushButton cmdOpen
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "View Full Size"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin PushButton cmdSavePNG
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Save as PNG"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin PushButton cmdSavePDF
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Save as PDF"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin Label lblStatus
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Generating Picture"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   329
   End
   Begin ProgressWheel ProgressWheel1
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   177
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Visible         =   True
      Width           =   16
   End
   Begin Timer timStatus
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   1000
      RunMode         =   0
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub callbackPictureFinished(p as Picture)
		  if me.myDrawing <> nil then
		    if p <> nil then
		      me.myDrawing.myFinishedPicture = new Picture(p.width, p.Height, 32)
		      me.myDrawing.myFinishedPicture.Graphics.DrawPicture(p, 0, 0)
		      
		      //clear memory
		      me.myDrawing.clearTempPicture
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub launchImage()
		  if me.myDrawing <> nil then
		    if me.myDrawing.myFinishedPicture <> nil then
		      dim im as new winImage
		      im.init(me.myDrawing.myFinishedPicture, me.myDrawing.sName)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveImage()
		  if myDrawing <> nil then
		    if myDrawing.myFinishedPicture <> nil then
		      dim f as FolderItem
		      Dim dlg As New SaveAsDialog
		      
		      Dim pngType As New FileType
		      pngType.Name = "Portable Network Graphic (*.png)"
		      pngType.MacType = "PNG "
		      pngType.Extensions = "png"
		      
		      dlg.promptText = "Where do you want to save your cat art?"
		      dlg.suggestedFileName = "MyFavoriteCatArt.png"
		      
		      dlg.title = "Save As PNG"
		      dlg.Filter = pngType
		      f = dlg.ShowModal
		      
		      if f <> nil then
		        myDrawing.myFinishedPicture.Save(f, Picture.Formats.PNG)
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub savePDF()
		  if me.myDrawing <> nil then
		    if me.myDrawing.myFinishedPicture <> nil then
		      dim f as FolderItem
		      Dim dlg As New SaveAsDialog
		      Dim pdfType As New FileType
		      pdfType.Name = "Portable Document Format (*.pdf)"
		      pdfType.MacType = "PDF "
		      pdfType.Extensions = "pdf"
		      
		      dlg.promptText = "Where do you want to save your cat art?"
		      dlg.suggestedFileName = "MyFavoriteCatArt.pdf"
		      
		      dlg.title = "Save As PDF"
		      dlg.Filter = pdfType
		      f = dlg.ShowModal
		      
		      
		      if f <> nil then
		        Var pdf As New PDFDocument
		        Var g As Graphics = pdf.Graphics
		        var p as picture = me.myDrawing.myFinishedPicture
		        var c as new Canvas
		        
		        pdf.Creator = "Rebrand Software, LLC"
		        pdf.Author = "Mike Gibson"
		        pdf.Keywords = "Random,Cat,Art"
		        pdf.Title = "My Favorite Cat Art"
		        pdf.Subject = "Generated using random cat art created by Xojo Sample Code app " + cstr(app.MajorVersion) + "." + cstr(app.MinorVersion) + "." + cstr(app.BugVersion)
		        
		        
		        // Set the compression for the PDF document
		        pdf.Compressed = false
		        
		        pdf.Graphics.DrawText("Random cat art generated from " + me.myDrawing.sName, 20, 20)
		        pdf.Graphics.DrawText("Original photo by " + me.myDrawing.myImageAttribution.sAuthor, 20, 30)
		        pdf.Graphics.DrawText("License: " + me.myDrawing.myImageAttribution.sLicense, 20, 40)
		        pdf.Graphics.DrawText("Created by Mike Gibson of Rebrand Softare, LLC - https://www.MikeGibson.work", 20, 50)
		        
		        
		        c.width = g.Width - 40
		        c.Height = g.Height - 60
		        
		        //resize to the canvas which matches the size of the PDF, in order to maintain aspect
		        pictureToCanvas(p, c)
		        
		        p = c.Backdrop //start using the resized picture which should fit properly
		        
		        g.DrawPicture(p, 20, 60)
		        
		        //write out pdf
		        pdf.Save(f)
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub showPicture()
		  pictureToCanvas(myDrawing.myFinishedPicture, cnvThumb)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub startDisplayTimer()
		  me.timStatus.RunMode = timer.RunModes.Multiple
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		iDuration As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		iDurationFinal As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		myDrawing As clsDrawing
	#tag EndProperty


#tag EndWindowCode

#tag Events cnvThumb
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused g
		  #Pragma Unused areas
		  
		  if myDrawing <> nil then
		    if myDrawing.myFinishedPicture <> nil then
		      pictureToCanvas(myDrawing.myFinishedPicture, cnvThumb)
		    end if
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused X
		  #Pragma Unused Y
		  launchImage()
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cmdOpen
	#tag Event
		Sub Action()
		  launchImage
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSavePNG
	#tag Event
		Sub Action()
		  saveImage()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cmdSavePDF
	#tag Event
		Sub Action()
		  savePDF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timStatus
	#tag Event
		Sub Action()
		  if myDrawing <> nil then
		    if myDrawing.myFinishedPicture = nil then
		      ProgressWheel1.Visible = true
		    else
		      showPicture()
		      lblStatus.text = "Creation time: " + cstr(cint(cstr(myDrawing.dDuration))) + " ms" //use cInt to remove trailing significant digits
		      ProgressWheel1.Visible = false
		      me.RunMode = timer.RunModes.Off
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="iDuration"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="iDurationFinal"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
