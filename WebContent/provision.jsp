<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bizpac integration client</title>
</head>
<body>
<h1 align="center">MBC UI</h1>
<h2 align="center">Bizpac Integration client</h2>
	<form action="RegisterService" method="POST">
		<table align="center" cellpadding="3" cellspacing="3" border="2">
			<tr>
				<td>EndPoint:</td>
				<td><select name="endpoint" tabindex="1">
						<option value="https://saas.bcsg.com/app/services/restful/provision">Stage</option>
						<!-- <option value="https://sbg.stage.mybusinessconnect.com.au/app">Stage</option> -->
						<option value="http://localhost:8085/app/services/restful/provision">Local</option>
						<option value="https://mybusinessworks.co.uk/app/services/restful/provision">Production</option>
				</select><br></td>
				<!-- <td><input type="text" name="endpoint" tabindex="1"/> e.g. http://localhost:8085/app/services/mbwrestful/provision<br></td> -->
			</tr>
			<tr>
				<td>Brand:</td>
				<td><input type="text" name="brand" tabindex="2"/><br>e.g SBG,BOM or </td>
			</tr>
			<tr>
				<td>Staff number:</td>
				<td><input type="text" name="staffNum" tabindex="2"/><br></td>
			</tr>
			<tr>
				<td>Branch No:</td>
				<td><input type="text" name="branchNo" tabindex="3"/><br></td>
			</tr>
			<tr>
				<td>Years:</td>
				<td><input type="text" name="years" tabindex="4"/><br> e.g. 1,2</td>
			</tr>
			<tr>
				<td>Existing customer:</td>
				<td><input type="text" name="isExistingCustomer" tabindex="5"/><br>e.g new,old or no</td>
			</tr>
			<tr>
				<td>Email-Id:</td>
				<td><input type="text" name="emailId" tabindex="6"/> e.g. someone@example.com<br></td>
			</tr>
			<!-- <tr>
				<td>Salutation:</td>
				<td><select name="salutation" tabindex="3">
						<option value="Mr">Mr</option>
						<option value="Mrs">Mrs</option>
						<option value="Prof">Prof</option>
						<option value="Ms">Ms</option>
				</select><br></td>
			</tr> -->
			<tr>
				<td>First name:</td>
				<td><input type="text" name="firstName" tabindex="7"/><br></td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td><input type="text" name="lastName" tabindex="8"/><br></td>
			</tr>
			<tr>
				<td>Company:</td>
				<td><input type="text" name="company" tabindex="9"/><br></td>
			</tr>
			<tr>
				<td>Address_1:</td>
				<td><input type="text" name="address1" tabindex="10"/><br></td>
			</tr>
			<tr>
				<td>Address_2:</td>
				<td><input type="text" name="address2" tabindex="11"/><br></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" name="city" tabindex="12"/><br></td>
			</tr>
			<tr>
				<td>Zip code:</td>
				<td><input type="text" name="zipcode" maxlength="7" tabindex="13"/> e.g GIR 0AA<br></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state" tabindex="14"/><br></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><input type="text" name="country" tabindex="15"/><br></td>
			</tr>
			<tr>
				<td>Telephone:</td>
				<td><input type="text" name="telephone" maxlength="15" tabindex="16"/><br></td>
			</tr>
			<!-- <tr>
				<td>Cell phone:</td>
				<td><input type="text" name="cell" maxlength="15" tabindex="12"/><br></td>
			</tr> -->
			<!-- <tr>
				<td>Number of days:</td>
				<td><input type="text" name="numberOfDays" maxlength="15" tabindex="12"/>e.g. 120<br></td>
			</tr>
			<tr>
				<td>Campaign type:</td>
				<td><input type="text" name="campaignType" maxlength="150" tabindex="12"/>e.g. Test_01<br></td>
			</tr> -->
			<tr>
				<td>Package name:</td>
				<td><input type="text" name="package" maxlength="150" tabindex="17"/>e.g. FINANCE:SECURITY:MKRTNG(semicolon separated)<br></td>
			</tr>
			<!-- <tr>
				<td>Rate Plan:</td>
				<td><input type="text" name="ratePlan" maxlength="15" tabindex="12"/>e.g. TFC_CORE_01_P1<br></td>
			</tr> -->
			<!-- <tr>
				<td>Bank name:</td>
				<td><input type="text" name="bankName" /><br></td>
			</tr>
			<tr>
				<td>Bank Account name:</td>
				<td><input type="text" name="bankAccName" /><br></td>
			</tr>
			<tr>
				<td>Sort code:</td>
				<td><input type="text" name="bankRouteNum" maxlength="6" /> e.g 201111<br></td>
			</tr>
			<tr>
				<td>Account no.:</td>
				<td><input type="text" name="bankAccNum" maxlength="8"/> e.g 11111111<br></td>
			</tr>
			<tr>
				<td>Bank post code:</td>
				<td><input type="text" name="bankPostCode" maxlength="7"/> e.g GIR 0AA<br></td>
			</tr> -->
			<tr align="center">
				<td colspan="5"><input type="submit" name="submit" value="Submit" tabindex="18"/></td>
			</tr>
		</table>
	</form>
</body>
</html>