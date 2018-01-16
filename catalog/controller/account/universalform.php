<?php 
class Controlleraccountuniversalform extends Controller { 
	
	public function index(){ 
	
		$this->load->model('catalog/attribute2');
		$this->load->model('catalog/attribute_group2');
		$lists = $this->model_catalog_attribute2->getAttributes();
		$groups = $this->model_catalog_attribute_group2->getAttributeGroups();
	
	/*
	header("Content-Type: text/html; charset=UTF-8");
	echo '<pre>'; print_r(var_dump( $_FILES  ));
	echo '<pre>'; print_r(var_dump( $this->request->post  ));
	die();
	*/
	
		//Заголовки и поля
		$text = array(
					  'call_me__header' => 'Перезвоните мне',
					  'call_me__home' => 'Перезвоните мне у меня остались вопросы',
					  'call_me__home_calc_windows' => 'ЭКСПРЕСС РАСЧЕТ ВАШИХ ОКОН',
					  'calculator' => 'calculator',
					  'formname' => 'Тип формы',
					  'product' => 'product_calculator',
					  'call_me__modal_measure' => 'Вызвать замерщика',
					  'call_me__modal_call' => 'Заказать звонок',
					  'call_me__modal_discount' => 'Получить скидки',
					  'page_chertog' => 'ОТПРАВИТЬ ЧЕРТЕЖ НА ПОЧТУ',
					  'page_zamer' => 'ВЫЗВАТЬ ЗАМЕРЩИКА',
					  'page_service_master' => 'РЕМОНТ ОКОН',
					   'call_me__modal_send_letter_director' => 'Написать директору',
					   '' => '',
					   '' => '',
					   '' => '',
					   '' => '',
					   '' => '',
					  
					  
					  'phone' => 'Номер телефона',
					  'name' => 'Имя',
					  'montage' => 'Монтаж/демонтаж',
					  'moskito' => 'Москитная сетка',
					  'on' => 'Да',
					  'otkos' => 'Откос',
					  'otliv' => 'Отлив',
					  'w_height' => 'Высота окна',
					  'w_width' => 'Ширина окна',
					  'p_height' => 'Высота подоконника',
					  'p_width' => 'Ширина подоконника',
					  'w_items' => 'Количество окон',
					  'address' => 'Адрес',
					  'comments' => 'Коментарий',
					  'window' => 'Окна',
					  'city' => 'Город',
					  'address_detail' => 'Адрес',
					  'date' => 'Дата',
					  'time' => 'Время',
					  'amount' => 'Количество',
					  'order' => 'Номер заказа',
					  'flor' => 'Этаж',
					  'window-type-s' => 'Тип окна',
					  'window-type' => 'Изображение',
					  'height_window' => 'Ширина окна',
					  'width_window' => 'Высота окна',
					  'email' => 'email',
					  'redireck' => 'redireck',
					  'file' => 'file',
					  '' => '',
					  
					  );
		
		$mail_message = "Мы получили форму со следующими полями:\n\r";
		
	
		foreach($this->request->post as $index => $row){
			
			if(($this->request->post['formname'] == 'calculator' OR
				$this->request->post['formname'] == 'product') AND is_numeric($index)){
			
				$mail_message .= "<br><b>".$groups[$index]['name'].'</b>: '.$lists[$row]['name'].'<br>';
			
			}else{
				if(is_numeric($row)){
					$mail_message .= "<br><b>".$text[$index].'</b>: '.$row;
				}else{
					if(!isset($text[$row])){
						$mail_message .= "<br><b>".$text[$index].'</b>: '.$row;	
					}else{
						$mail_message .= "<br><b>".$text[$index].'</b>: '.$text[$row];	
					}
				}
				
			}
		}
		
		
        $email_to = $this->config->get('config_email');

        $mail = new Mail();

        // Set the mail parameters
        $mail->protocol = $this->config->get('config_mail_protocol');
        $mail->parameter = $this->config->get('config_mail_parameter');

        if ($this->config->get('config_mail_smtp_hostname')) {
            $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
        } else {
            $mail->hostname = $this->config->get('config_smtp_host');
        }

        if ($this->config->get('config_mail_smtp_username')) {
            $mail->smtp_username = $this->config->get('config_mail_smtp_username');
        } else {
            $mail->username = $this->config->get('config_smtp_username');
        }

        if ($this->config->get('config_mail_smtp_password')) {
            $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
        } else {
            $mail->password = $this->config->get('config_smtp_password');
        }

        if ($this->config->get('config_mail_smtp_port')) {
            $mail->smtp_port = $this->config->get('config_mail_smtp_port');
        } else {
            $mail->port = $this->config->get('config_smtp_port');
        }

        if ($this->config->get('config_mail_smtp_timeout')) {
            $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
        } else {
            $mail->timeout = $this->config->get('config_smtp_timeout');
        }
		//$email_to = 'folder.list@gmail.com';
		
		//die($email_to);
		
        $mail->setTo($email_to);
        $mail->setFrom(explode(',', $this->config->get('config_email'))[0]);
        $mail->setSender($this->config->get('config_name'));
		
		if(isset($this->request->post['window-type'])){
			$mail->AddAttachment(DIR_APPLICATION.'..'.$this->request->post['window-type'], $this->request->post['window-type-s']);
		}
		
		if(isset( $_FILES['file']['tmp_name'])){
			$tmpFilename = $_FILES['file']['tmp_name'];
			$Filename = $_FILES['file']['name'];
			copy($tmpFilename, DIR_DOWNLOAD.$Filename);
			$mail->AddAttachment(DIR_DOWNLOAD.$Filename, $Filename);
		}
        
		$mail->setSubject(html_entity_decode($text[$this->request->post['formname']]), ENT_QUOTES, 'UTF-8');
        $mail->setHtml($mail_message);
        $mail->setReplyTo(explode(',', $this->config->get('config_email'))[0]);

        // Send mail to the shop owner
        $mail->send();

        // Send to other mail from Config Mail. OC =>2.2.0.0
        if ($this->config->get('config_mail_alert_email')) {
            $mail->setTo($this->config->get('config_mail_alert_email'));
           $mail->send();
        }

        // Send to other mail from Config Mail.OC <2.2.0.0
        if (VERSION <= '2.2.0.0' and $this->config->get('config_mail_alert')) {
            $mail->setTo($this->config->get('config_mail_alert'));
           $mail->send();
        }

        // Send mail to the customer
        if(!empty($this->request->post['mail'])){
            $mail->setTo($json['mail']);
            $mail->send();
        }

		
		if(isset($this->request->post['redireck'] )){
			$this->response->redirect($this->request->post['redireck']);
		}else{
		
			$json['success'] = true;
			$this->response->addHeader('Content-Type: application/json');
			$this->response->setOutput(json_encode($json));
		}
		
	
	}
}
