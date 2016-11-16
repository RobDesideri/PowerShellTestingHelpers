#Import all public functions for tests.
$Public  = @( Get-ChildItem -Path $PSScriptRoot\script\public\*.ps1 -ErrorAction SilentlyContinue )
Foreach($import in @($Public))
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

Describe "PowerShellTestingHelpers Public Functions" {
	Context "Function Exists" {
		It "Should Return" {
			
		}
	}
}