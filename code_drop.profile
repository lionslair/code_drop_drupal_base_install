<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function code_drop_form_install_configure_form_alter(&$form, $form_state) {
  $form['regional_settings']['site_default_country']['#default_value'] = 'AU';
  $form['update_notifications']['update_status_module']['#default_value'] = array();
}
