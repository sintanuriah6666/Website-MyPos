<section class="content-header">
    <h1>Stock Report
        <small>Laporan Penjualan Produk</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i></a></li>
        <li><a href="#">Reports</a></li>
        <li class="active">Stocks</li>
    </ol>
  <div class="box box-solid">
  <div class="box-header">
    <i class="fa fa-th"></i>
    <h3 class="box-title">Produk terlaris bulan ini </h3>
    <div class="box-tools pull-right">
      <button type="button" class="btn btn-sm" data-widget="collapse">
        <i class="fa fa-minus"></i>
      </button>
</div>
</div>
<div class="box-body">
  <div id="sales-bar" class="graph"></div>
</section>



<link rel="stylesheet" href="<?=base_url()?>assets/bower_components/morris.js/morris.css">
<script src="<?=base_url()?>assets/bower_components/morris.js/morris.min.js"></script>
<script src="<?=base_url()?>assets/bower_components/raphael/raphael.min.js"></script>
<script src="<?=base_url()?>assets/bower_components/jquery/dist/jquery.min.js"></script>
<script>
    
    Morris.Bar({
      element: 'sales-bar',
      resize: true,
      data: [
      <?php foreach ($row as $key => $data) {
        echo "{ item: '".$data->name."', sold: ".$data->sold."},";
      } ?>
       
      ],
      barColors: [  '#FFA07A' ], 
      xkey: 'item',
      ykeys: ['sold'],
      labels: ['sold'],
      hideHover: 'auto'
    });

     </script>

 

