<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
      <button type="submit" form="form-comment" formaction="<?php echo $enable; ?>" data-toggle="tooltip" title="<?php echo $text_enable; ?>" class="btn btn-success"><i class="fa fa-check"></i></button>
      <button type="submit" form="form-comment" formaction="<?php echo $disable; ?>" data-toggle="tooltip" title="<?php echo $text_disable; ?>" class="btn btn-warning"><i class="fa  fa-ban"></i></button>
      <button onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-comment').submit() : false;" form="form-comment" formaction="<?php echo $delete; ?>" data-toggle="tooltip" title="Delete" class="btn btn-danger"><i class="fa fa-trash-o"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-comment">
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
     		<thead>
     		<tr>
            <td width="1"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
            <td width="50%"><?php echo $column_comment; ?></td>
            <td><?php echo $column_post; ?></td>
            <td><?php echo $column_name; ?></td>
            <td class="text-right"><?php echo $column_date; ?></td>
            <td class="text-right"><?php echo $column_status; ?></td>
          </tr>
     		</thead>
     		<tbody>
     		<?php if ($blog_comments) { ?>
     		<?php foreach ($blog_comments as $blog_comment) { ?>
     		<tr>
            <td>
            <input type="checkbox" name="selected[]" value="<?php echo $blog_comment['blog_comment_id'];?>">
            </td>
            <td><?php echo $blog_comment['comment']; ?></td>
             <td class="left"><?php echo $blog_comment['title']; ?></td>
            <td><?php echo $blog_comment['name']; ?><br />тел/email: <?php echo $blog_comment['email']; ?><br />Адрес:<?php echo $blog_comment['adress']; ?></td>
            
						<td class="text-right"><?php //echo $blog_comment['date_added']; ?>
						    <input placeholder="<?php echo $blog_comment['date_added']; ?>" name="date_added" class="datepicker1" id="date<?php echo $blog_comment['blog_comment_id'];?>" data-date-format="yyyy-mm-dd" data-blog_comment_id="<?php echo $blog_comment['blog_comment_id'];?>"   class="form-control" style="width: 100px;"/>
            </td>
            <td class="text-right">
            <?php if($blog_comment['status']){ ?>
            <span class="label label-success" style="font-size:100%;"><?php echo $text_enabled; ?></span>
            <?php }else{ ?>
            <span class="label label-danger" style="font-size:100%;"><?php echo $text_disabled; ?></span>
            <?php } ?>
            </tr>
     		<?php } ?>
     		<?php }else{ ?>
     		<tr>
            <td class="text-center" colspan="8"><?php echo $text_no_result; ?></td>
          </tr>
     		<?php } ?>
     		</tbody>
     		</table>
     		</div>
      </form>
      <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
	
	<!-- http://t1m0n.name/air-datepicker/docs/index-ru.html -->
<link href="/admin/view/javascript/datepicker/css/datepicker.min.css" rel="stylesheet" type="text/css">
<script src="/admin/view/javascript/datepicker/js/datepicker.min.js"></script>
<script>
  // Инициализация
$('.datepicker1').datepicker();



$(document).on('change', '.datepicker1', function(){
	
	var blog_comment_id = $(this).data('blog_comment_id');
	var date = $(this).vak();
	
	console.log(blog_comment_id+' '+date);
	
	});

	$('.datepicker1').datepicker({
    onShow: function(dp, animationCompleted){
        if (!animationCompleted) {
            //log('start showing')
        } else {
            //log('finished showing')
        }
    },
    onHide: function(dp, animationCompleted){
        if (!animationCompleted) {
            //console.log('start hiding')
        } else {
            console.log('finished hiding')
						
						var id = dp.el.dataset.blog_comment_id;
						var date = $('#date'+id).val();
						
						$.ajax({
						url: 'index.php?route=blog/blog_comment/editdate&token=<?php echo $_GET['token']; ?>&date=' +  date+ '&id=' +  id,
						method: "GET",
						dataType: 'text',
						success: function(json) {
							console.log(json);
						}
						});
						
						
        }
    }
})
	
// Доступ к экземпляру объекта
$('.datepicker1').data('datepicker');
</script>   
	
<?php echo $footer; ?>