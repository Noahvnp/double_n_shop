<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/Product.php';?>
<?php include '../classes/Category.php';?>
<?php include '../classes/Brand.php';?>
<?php include_once '../helpers/Format.php';?>
<?php
	$pd = new Product();
	$fm = new Format();
	if(isset($_GET['productid'])) {
		$id = $_GET['productid'];
		$delpro = $pd->del_product($id);
	}
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block">  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Product Image</th>
					<th>Category</th>
					<th>Brand</th>
					<th>Description</th>
					<th>Type</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<?php
					
					$get_product = $pd->show_product();
					if($get_product){
						$i = 0;
						while($result = $get_product->fetch_assoc()){
							$i++;
				?>
				<tr class="odd gradeX">
					<td><?php echo $i; ?></td>
					<td><?php echo $result['productName'] ?></td>
					<td><?php echo $result['price'] ?></td>
					<td><img src="uploads/<?php echo $result['image'];?>"  width="80"></td>
					<td><?php echo $result['catName'] ?></td>
					<td><?php echo $result['brandName'] ?></td>
					<td><?php echo $fm->textShorten($result['product_desc'], 40); ?></td>
					<td><?php
						if($result['type'] == 1){
							echo "Featured";
						}else{
							echo "Non-Featured";
						}
					?></td>
					<td><a href="productedit.php?productid=<?php echo $result['productId'] ?>">Edit</a> ||
						<a href="?productid=<?php echo $result['productId']?>">Delete</a>
					</td>
				</tr>
				<?php } } ?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
