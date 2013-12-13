; code_drop make file for d.o. usage
core = "7.x"
api = "2"

; Modules
projects[] = ctools
projects[] = devel
projects[] = entity
projects[] = menu_block
projects[] = module_filter
projects[] = libraries
projects[] = pathauto
projects[] = token
projects[] = views
projects[] = wysiwyg
projects[] = imce
projects[] = imce_wysiwyg
projects[] = webform

; Themes
projects[] = zen
projects[] = shiny

; tinymce
libraries[tinymce][directory_name] = "tinymce"
libraries[tinymce][type] = "library"
libraries[tinymce][destination] = "libraries"
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://download.moxiecode.com/tinymce/tinymce_4.0.11.zip"
