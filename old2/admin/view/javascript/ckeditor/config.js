/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {


	config.fillEmptyBlocks = false; // удалить &nbsp; в пустом блоке
		config.enterMode = CKEDITOR.ENTER_BR;
		config.allowedContent = true;
		/*config.indentClasses = ["ul-grey", "ul-red", "text-red", "ul-content-red", "circle", "style-none", "decimal", "paragraph-portfolio-top", "ul-portfolio-top", "url-portfolio-top", "text-grey"];*/
	    config.protectedSource.push(/<(style)[^>]*>.*<\/style>/ig);
        config.protectedSource.push(/<(script)[^>]*>.*<\/script>/ig);// разрешить теги <script>
		config.protectedSource.push(/<(link)[^>]*>.*<\/link>/ig);// разрешить теги <link>
        config.protectedSource.push(/<(i)[^>]*>.*<\/i>/ig);// разрешить теги <i>
		config.protectedSource.push(/<\?[\s\S]*?\?>/g);// разрешить php-код
        config.protectedSource.push(/<!--dev-->[\s\S]*<!--\/dev-->/g);
        //config.protectedSource.push( /<p class="[^:]*">.*?<\/p>/g );
		//config.protectedSource.push( /<tr class="[^:]*">.*?<\/tr>/g );
		config.allowedContent = true; /* all tags */
		config.allowedContentRules  = true;
		CKEDITOR.config.format_div = { element: 'div' }; 
		config.coreStyles_bold = { element: 'b', overrides: 'strong' }; // заменить strong на в	
		
		//config.fillEmptyBlocks = false;
		config.tabSpaces = 0;
		config.basicEntities = false;
};
