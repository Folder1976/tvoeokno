<!-- Modal fastorder -->
<div style="display:none; padding: 10px;" class="modal fade modal-fastorder" id="bs-fastorder<?php echo $product_id;?>" tabindex="-1" role="dialog" aria-labelledby="bs-fastorderLabel">
    <div class="modal-dialog" role="document">

            <div class="modal-content fb-modal">
                <div class="modal-header">
                    <!-- <button data-fancybox-close="" class="fancybox-close-small" title="Close"></button> -->
                    <button data-fancybox-close="" type="button" class="fancybox-close-small" id="close" data-dismiss="modal" aria-label="Close"></button>
                    <h2 class="modal-title" id="bs-fastorderLabel"><?php echo $text_fastorder_form_header;?></h2>
                </div>
                <div class="modal-body">
                    <div role="form" id="fastorder">
                        <fieldset>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group input-group-sm">
                                        <div class="fast_image"><img src="<?php echo $image;?>"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <?php //echo $text_fastorder_form_info;?>
                                    <!-- Alert form validation -->
                                    <div id="error-msg" class="alert alert-danger" role="alert" style="display: none;">
                                        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                        <?php echo $txt_text_fastorder_form_error_message;?>
                                    </div>

                                    <div id="wait-msg" class="alert alert-info" role="alert" style="display: none;">
                                        <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                        <?php echo $txt_text_fastorder_form_wait_message;?>
                                    </div>


                                    <div class="form-group input-group-sm">
                                        <input type="text" class="form-control" id="name<?php echo $product_id;?>" name="name<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_name_placeholder;?>" required autofocus value="<?php if(isset($username)){echo $username;}?>">
                                    </div>
                                    <div class="form-group input-group-sm">
                                        <input type="tel" class="form-control" id="phone<?php echo $product_id;?>" name="phone<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_phone_placeholder;?>" required value="<?php if(isset($telephone)){echo $telephone;}?>">
                                    </div>
                                    <div class="form-group input-group-sm">
                                        <input type="email" class="form-control" id="mail<?php echo $product_id;?>" name="mail<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_mail_placeholder;?>" required value="<?php if(isset($email)){echo $email;}?>">
                                    </div>

                                </div>
                                <div class="col-md-12">
                                    <textarea style="scroll-behavior: auto;" class="form-control" id="comment<?php echo $product_id;?>" name="comment<?php echo $product_id;?>" rows="7" placeholder="<?php echo $text_fastorder_input_comment_placeholder;?>"></textarea>
                                </div>
                            </div>


                            <div class="form-group input-group-sm" style="display: none;">
                                <label for="txt_count"><?php echo $text_fastorder_count;?></label>
                                <!--      <input type="text" onchange="priceCalc(this.value)" class="form-control" id="count<?php echo $product_id;?>" name="count<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_count_placeholder;?>" value='1'></input> -->
                                <select onchange="priceCalc(this.value)" class="form-control" id="count<?php echo $product_id;?>" name="count<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_count_placeholder;?>" default='1'>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" id="btn_submit<?php echo $product_id;?>" class="green-btn"><?php echo $text_fastorder_button_submit;?></button>
                                </div>
                            </div>


                            <!-- <button style="float:right; margin: 10px;" type="button" class=" btn btn-danger btn-lg" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><?php echo $text_fastorder_button_cancel;?></span></button> -->
                            <div id="tt" class="form-group">
                                <label for="txta_comment"></label>
                                <input class="form-control" style="display:none" id="product_name<?php echo $product_id;?>" name="product_name<?php echo $product_id;?>" value="<?php echo $product_name;?>">
                                <input class="form-control" style="display:none" id="price<?php echo $product_id;?>" name="price<?php echo $product_id;?>" value="<?php echo $price; ?>">
                                <input class="form-control" style="display:none" id="product_id<?php echo $product_id;?>" name="product_id<?php echo $product_id;?>" value="<?php echo $product_id;?>">
                            </div>
                        </fieldset>

                    </div>

                </div>
                <div class="modal-footer">
                    <ul style="list-style: none; margin-bootm:0; padding-left: 0;">
                        <li><?php echo $text_fastorder_mail_msg_order;?>: <strong style="color: #000;"><?php echo htmlspecialchars_decode($product_name); ?></strong></li>
                        <li>
                        <span style="float: left; font-size: 11px; margin: 0;">
                            <!--a href="http://tauweb.ru/products/81-pokupka-v-odin-klik-dlya-opencart-bystryj-zakaz.html" title="FastOrder Button">FastOrder</a-->
                        </span>
                            <?php echo $text_fastorder_mail_msg_price;?>: <strong><?php echo $symbolLeft;?></strong><strong id="total-price<?php echo $product_id;?>"><?php echo $price;?></strong>
                            <strong><?php echo $symbolRight;?></strong>
                        </li>

                    </ul>
                    <!--                 <span style="float: left; font-size: 11px; margin: 0;">
                                        <a style="text-decoration: none; color: #808080;" href="http://tauweb.ru/products/81-pokupka-v-odin-klik-dlya-opencart-bystryj-zakaz.html" title="FastOrder Button">FastOrder</a>
                                    </span> -->
                </div>
            </div><!--/fb-modal-->



    </div>

</div>

<!-- Modal fastorder success -->
<div class="modal fade modal-fastorder-success" id="fastorder-success<?php echo $product_id;?>" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo $text_fastorder_success_title;?></h4>
            </div>
            <div class="modal-body">
                <?php echo $text_fastorder_success_message;?>
            </div>
            <div class="modal-footer" style="text-align: center;">
                <button type="button"  class="btn btn-default btn-success" data-dismiss="modal"><?php echo $text_fastorder_button_close;?></button>
            </div>
        </div>
    </div>
</div>

<script>
    // Calc the price value
    function priceCalc(val){
        $('#total-price<?php echo $product_id;?>').text(val*<?php echo $price;?>)
    }

    $('#bs-fastorder<?php echo $product_id?>').modal('show');
    $('#btn_submit<?php echo $product_id;?>').on('click', function() {

        // Form fill variables
        var data = [];

        data['name']          = $('#name<?php echo $product_id;?>').val();
        data['phone']         = $('#phone<?php echo $product_id;?>').val();
        data['mail']          = $('#mail<?php echo $product_id;?>').val();
        data['comment']       = $('#comment<?php echo $product_id;?>').val();
        data['product_name']  = $('#product_name<?php echo $product_id;?>').val();
        data['count']         = $('#count<?php echo $product_id;?>').val();
        data['price']         = $('#price<?php echo $product_id;?>').val();
        data['total']         = data['price'] * data['count'];
        data['product_id']    = $('#product_id<?php echo $product_id;?>').val();
        data['product_link']  = '<?php echo $product_link;?>';

        $.ajax({
            url: 'index.php?route=product/fastorder/sender',
            type: 'post',
            data: {name: data['name'], phone: data['phone'], mail: data['mail'], comment: data['comment'],
            product_name: data['product_name'], price: data['price'], count: data['count'], total: data['total'], product_id: data['product_id'], product_link: data['product_link']},
            dataType: 'json',
            beforeSend: function() {
                // Do form valdation
                if (!$('#phone<?php echo $product_id;?>').val()
                        // || !$('#name<?php echo $product_id;?>').val()
                        // || !$('#mail<?php echo $product_id;?>').val()
                        // || !$('#count<?php echo $product_id;?>').val())
                    )
                {
                    $('#error-msg').show();
                    return false;
                }else{
                    $('#error-msg').hide();
                    $('#wait-msg').show();
                }
            },
            complete: function() {
                $('#error-msg').hide();
                $('#bs-fastorder<?php echo $product_id;?>').modal('hide');
            },
            success: function(json) {
                $('#fastorder-success<?php echo $product_id;?>').modal('show');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
</script>