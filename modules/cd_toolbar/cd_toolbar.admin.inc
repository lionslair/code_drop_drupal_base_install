<?php

/**
 * @file
 * Admin config form for cd toolbar.
 */

/**
 * Implements hook_form().
 */
function cd_toolbar_admin_settings_form($form, &$form_state) {

  $options = array('_none' => 'None');
  foreach (_cd_toolbar_get_menu_blocks() as $id => $menu_block) {
    $options[$id] = $menu_block['admin_title'];
  }
  $form['cd_toolbar_selected_menu'] = array(
    '#type' => 'select',
    '#title' => t('Shortcut Menu Block'),
    '#options' => $options,
    '#default_value' => variable_get('cd_toolbar_selected_menu', '_none'),
    '#description' => t('Select the menu block to use'),
  );

  return system_settings_form($form);
}

/**
 * Get all menu blocks.
 *
 * @return array
 *   Menu block config array.
 */
function _cd_toolbar_get_menu_blocks() {
  $menu_block_ids = variable_get('menu_block_ids', array());
  foreach (array_keys(module_invoke_all('menu_block_blocks')) as $delta) {
    $menu_block_ids[] = $delta;
  }

  $menu_blocks = array();
  foreach ($menu_block_ids as $id) {
    $menu_blocks[$id] = menu_block_get_config($id);
  }
  return $menu_blocks;
}
