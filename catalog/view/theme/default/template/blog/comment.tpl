
<?php
  $lands = array(
                'Номер договора' => 'Номер договору',
                'Адрес' => 'Адреса'
                );
 $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 1){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
    //Пример
    //<?php echo $lib['русская фраза']; ? >
 $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = UA_URL;}
 
 ?>
<?php if ($comments) { ?>

<div class="client-reviews">
<?php foreach ($comments as $comment) { ?>
<div class="blog_comment client-reviews-single">
    <p><?php echo $comment['comment']; ?></p>
    <div class="client-reviews-single-bottom">
        <p class="date"><?php //echo $comment['date_added']; ?></p>
        <p class="name"><?php echo $comment['name']; ?>, <?php echo $comment['adress']; ?>, <?php echo $lib['Номер договора'];?>: <?php echo $comment['email']; ?></p>
    </div>
</div>
<?php } ?>
</div>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="blog_comment">
    <p><?php echo $text_no_comment; ?></p>
</div>
<?php } ?>
