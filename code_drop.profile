<?php
/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
if (!function_exists("system_form_install_configure_form_alter")) {
  function system_form_install_configure_form_alter(&$form, $form_state) {
    $form['site_information']['site_name']['#default_value'] = 'Code Drop';
  }
}

/**
 * Implements hook_form_alter().
 *
 * Select the current install profile by default.
 */
if (!function_exists("system_form_install_select_profile_form_alter")) {
  function system_form_install_select_profile_form_alter(&$form, $form_state) {
    foreach ($form['profile'] as $key => $element) {
      $form['profile'][$key]['#value'] = 'code_drop';
    }
  }
}

/**
 * Implements hook_menu_block_blocks().
 */
function code_drop_menu_block_blocks() {
  return array(
    // The array key is the block id used by menu block.
    'admin-toolbar' => array(
      // Use the array keys/values described in menu_tree_build().
      'menu_name' => 'toolbar-menu',
      'parent_mlid' => 0,
      'title_link' => FALSE,
      'admin_title' => 'Toolbar Menu',
      'level' => 1,
      'follow' => 0,
      'depth' => 2,
      'expanded' => TRUE,
      'sort' => FALSE,
    ),
  );
}
