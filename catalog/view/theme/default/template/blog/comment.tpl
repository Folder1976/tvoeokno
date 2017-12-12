

<?php if ($comments) { ?>

<div class="client-reviews">
<?php foreach ($comments as $comment) { ?>
<div class="blog_comment client-reviews-single">
    <p><?php echo $comment['comment']; ?></p>
    <div class="client-reviews-single-bottom">
        <p class="date"><?php echo $comment['date_added']; ?></p>
        <p class="name"><?php echo $comment['name']; ?></p>
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
