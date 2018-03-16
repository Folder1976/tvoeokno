<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
<ul class="header-lang">
    <?php foreach ($languages as $language) { ?>
      <?php if ($language['code'] == $code) { ?>
        <li><a href="javascript:;" class="active"><?php echo str_replace(array('ru-ru','ua-uk'),array('RU','UA'),$language['code']); ?></a></li>
      <?php }else{ ?>
        <li><button class="btn btn-link btn-block language-select" onClick="this.form.submit();" type="button" name="<?php echo $language['code']; ?>"><?php echo str_replace(array('ru-ru','ua-uk'),array('RU','UA'),$language['code']); ?></button>
            <input type="hidden" name="code" value="<?php echo $language['code']; ?>" />
        </li>
      <?php } ?>
    <?php } ?>  
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</ul><!--
--><style>
  .language-select{
    padding: 0;
    border: none;
    margin: 0;
    font-size: 10px;
    letter-spacing: 0.6px;
    color: #3D799F;
    text-decoration: underline;
  }
</style>