<!DOCTYPE html>
<head>
	<title>Search Products</title>
	<meta charset="UTF-8">
	<!-- Bootstrap CSS styles -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Google jQuery CDN -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- Roboto Google font -->
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<!-- Custom Styles -->
	<style type="text/css">
		body {
			padding-top: 50px;
			font-family: 'Roboto', sans-serif;
			font-size: 16px;
		}
		h1 {
			margin-bottom: 60px;
		}
	</style>
</head>
<body>
<?php

function get_brand(){
	// Build up DB connection including cofiguration file
	require ("dbcon.php");
	//Assign an empty variable to store the fetched items
	$output = '';
	//SQL query to fetch the phone brands to the input field
	$sql = "SELECT * FROM brands ORDER BY brand_id";
	// execution of the query. Output a boolean value
	$res = mysqli_query($conn , $sql);
	// Check whether there are results or not
	if(mysqli_num_rows($res)>0){
		while ($row = mysqli_fetch_array($res)) {
			//Concatenate fetched items to the output variable with HTML option tags to display
			$output .= '<option value="'.$row["brand_id"].'">'.$row["brand_name"].'</option>';
		}
	}
	//return the output results to be displayed
	return $output;

}

?>
<div class="container">
	<div class="row">
		<center>
			<h1>Dynamic Select Box using jQuery, Ajax and PHP
			</h1>
		</center>
		<div class="col-lg-4"></div>
		<div class="col-lg-4">			
			<div class="form-group">
				<label for="brand">Mobile Phone Brand</label>
				<select name="brand" id="brand" class="form-control">
					<option value="">Select Phone Brand</option>
					<!-- load the PHP function to fetch the brand names -->
					<?php echo get_brand(); ?>
				</select>	
			</div>
			<br><br>
			<div class="form-group">
				<label for="item">Phone Model</label>
				<select name="item" id="item" class="form-control">
					<option value="">Select Phone Model</option>
				</select>	
			</div>			
		</div>
		<div class="col-lg-4"></div>
	</div>
</div> 

<!-- Bootstrap JS file -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- start jQuery function -->
<script type="text/javascript">
	// start jQuery function to load the content of all functions after the page is loaded completely
	$(document).ready(function(){
		//jQuery function to get the value changed in the input field
		$('#brand').change(function(){
			//Store the selected input value in brand_id variable
			var brand_id = $(this).val();
			// start Ajax call to get the models belongs to a particular brand_id
			$.ajax({
				url: "fetch_model.php",		//Path for PHP file to fetch phone models from DB
				method: "POST",				//Fetching method
				data: {brand_id:brand_id},	//Data send to the server to get the results
				success:function(data)		//If data fetched successfully from the server, execute this function
				{
					// console.log(data);
					$('#item').html(data);	//Print the fetched models in the section wih ID - #item
				}
			});
			// end Ajax call to get the suggestions
		});
	});
</script> 
<!-- end jQuery function -->
</body>
</html>