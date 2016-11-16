#Import all private functions for tests.
$Private  = @( Get-ChildItem -Path $PSScriptRoot\script\private\*.ps1 -ErrorAction SilentlyContinue )
Foreach($import in @($Private))
{
    Try
    {
        . $import.fullname
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }
}

#Test begin!

Describe "PowerShellTestingHelpers Private Functions" {
	Context "Function Exists" {
		It "Should Return" {
		
		}
	}
}