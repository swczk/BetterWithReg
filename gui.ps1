[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

$Form = New-Object System.Windows.Forms.Form
$Form.StartPosition = "CenterScreen"
$Form.Topmost = $false 
$Form.Size = "800,600"
$Form.FormBorderStyle = 'Fixed3D'
$Form.MaximizeBox = $false
$Form.AutoScale = $false
$Form.AutoSize = $false

$FormTabControl = New-object System.Windows.Forms.TabControl 
$FormTabControl.Size = "800,600" 
$FormTabControl.Location = "0,0" 
$Form.Controls.Add($FormTabControl)

$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.UseVisualStyleBackColor = $True 
$Tab1.Name = "Tab1" 
$Tab1.Text = "Custom" 
$FormTabControl.Controls.Add($Tab1)
#$Tab1.Controls.Add()

$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.UseVisualStyleBackColor = $True 
$Tab2.Name = "Tab2" 
$Tab2.Text = "Context Menu" 
$FormTabControl.Controls.Add($Tab2)
#$Tab2.Controls.Add()

$Tab3 = New-object System.Windows.Forms.Tabpage
$Tab3.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab3.UseVisualStyleBackColor = $True 
$Tab3.Name = "Tab3" 
$Tab3.Text = "Navigation Pane" 
$FormTabControl.Controls.Add($Tab3)
#$Tab3.Controls.Add()

$Tab4 = New-object System.Windows.Forms.Tabpage
$Tab4.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab4.UseVisualStyleBackColor = $True 
$Tab4.Name = "Tab4" 
$Tab4.Text = "This PC" 
$FormTabControl.Controls.Add($Tab4)
#$Tab4.Controls.Add()

$Tab5 = New-object System.Windows.Forms.Tabpage
$Tab5.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab5.UseVisualStyleBackColor = $True 
$Tab5.Name = "Tab5" 
$Tab5.Text = "Properties Tab" 
$FormTabControl.Controls.Add($Tab5)
#$Tab5.Controls.Add()

# Initlize the form
$Form.Add_Shown({$Form.Activate()})
[void]$Form.ShowDialog()