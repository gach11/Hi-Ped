<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hi! Ped Receipt Form</title>
    <style>
        body{
			
            background-color: #F6F6F6;
			background-size: 1900px;			
            margin: 0;
            padding: 10px;
			border-raduis: 5px;
			
        }
        h1,h2,h3{
            margin: 0;
            padding: 0;
			text-align: center;
		}

        p{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 100%;
            margin-right: auto;
            margin-left: auto;
			background-color: #FFFFFF;
			opacity: 0.9;
			
        }
        .brand-section{
           background-color: #7BB9F1;
           padding: 10px 40px;
        }
        .logo_sec{
            width: 50%;
    	    display: flex;
    	    justify-content: space-between;
    	    padding: 20px;
    	    margin-top: 5;
        }
        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .col-6{
            width: 50%;
            flex: 0 0 auto;
        }
        .text-white{
            color: #fff;
        }
        .company-details{
            float: right;
            text-align: right;
			padding-top: 10px;
        }
        .body-section{
            text-align: center;
            padding: 16px;
            border: 1px solid gray;

		}
		.heading{
			text-align: center;
		}
        .heading1{
			text-align: left;
		}
        .sub-heading{
            color: #262626;
            margin-bottom: 05px;
        }
		.center {
			  margin-left: auto;
			  margin-right: auto;
		}
        table{
            background-color: #fff;
            width: 50%;
            border-collapse: center;
			border-bottom:1px solid #111; 
        }
        table thead tr{
            border: 1px solid #111;
            background-color: #f2f2f2;
        }
        table td {
            vertical-align: middle;
            text-align: center;
        }
        table th, table td {
            padding-top: 08px;
            padding-bottom: 08px;
        }
        .table-bordered{
            box-shadow: 0px 5px 0.5px gray;
        }
        .table-bordered td, .table-bordered th {
            border: 1px solid #dee2e6;
        }
		.credits{
            text-align: center;
			align-items:center;
        }
		.text-right{
            text-align: end;
        }
        .w-20{
            width: 20%;
        }
        .float-right{
            float: right;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="brand-section">
            <div class="row">
                <div class="col-6">
		<div class="logo_sec">
                    <h3 class="text-dark blue"><img src="logo3.png" alt="logo" width="30" height="30"> Hi! Ped Clinic</h3>
                </div>
		</div>
                <div class="col-6">
                    <div class="company-details">
                        <p class="text-dark blue">123 Sampaguita St., Taguig City</p>
                        <p class="text-dark blue">hi.ped.clinic@gmail.com</p>
                        <p class="text-dark blue">868-1999(20)</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="body-section">
            <div class="row" >
                <div class="col-6" >
				<div>
					<h2 class="heading1">Payment Receipt</h2>
                </div>
				</div>
            </div>
        </div>

        <div class="body-section">
            <h3 class="heading"></h3>
            <br>
            <table class="center">
                <tbody>
                    <tr>
                        <td class="text-left">Consultation Fee: </td>
                        <td>PHP 1,200.00</td>
                    </tr>
                    <tr>
                        <td class="text-left">Online Session Fee: </td>
                        <td>PHP 300.00</td>
                    </tr>
                </tbody>
                <tr>
                    <td class="text-left">Total: </td>
                    <td>PHP 1,500.00</td>
                </tr>
            </table>
            <br>
			<div>
            <h3 class="heading">Payment Status: Paid</h3>
            <h3 class="heading">Payment Mode: PayPal</h3>
			</div>
			<br>
			<br>
			    <div class="row">
				  <div class="col-6">
					<div class="credits" style="text-align: center">
						<p class="text-black">Prepared by: </p><br>
						<img src="signature1.png" alt="sign" width="100" height="50">
                        <p class="text-black">Ms. Mary Kathryn Lanon</p>
                        <p class="text-black">Secretary</p><br>
						</div>
                        
					</div>
                    <div class="col-6">
                        <div class="credits" style="text-align: center">
                            <p class="text-black">Approve by: </p><br>
                            <img src="signature1.png" alt="sign" width="200" height="50">
                            <p class="text-black">Dr. Emmanuel Carranza</p>
                            <p class="text-black">Head Pediatrician</p><br>
                            </div>
                            
                        </div>		
                </div>
        </div>
        <div class="body-section">
            <p>&copy; Copyright 2021 - Hi! Ped | Clinic. All rights reserved. 
            </p>
        </div> 
    </div>      
		
</body>
</html>
