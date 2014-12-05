<?php

/**
 * @file
 * Default template for admin toolbar.
 */

/*
 * Would be good to move the user_access out of the template. We could set the
 * permission on $toolbar['#access'] but that wouldn't get rid of the container.
 *
 * The solution could be to separate this into two template files.
 */
?>

<div id="toolbar" class="<?php print $classes; ?> clearfix">
  <?php if (user_access('cd access admin toolbar')) : ?>
    <div class="toolbar-menu clearfix">
      <?php print render($toolbar['toolbar_home']); ?>
      <?php print render($toolbar['toolbar_menu']); ?>
      <?php if ($toolbar['toolbar_drawer'] && user_access('cd access toolbar')):?>
        <?php print render($toolbar['toolbar_toggle']); ?>
      <?php endif; ?>
    </div>
  <?php endif; ?>

  <?php if (user_access('cd access toolbar')) : ?>
    <div class="<?php echo $toolbar['toolbar_drawer_classes']; ?>">

      <?php
        $menu_block_id = variable_get('cd_toolbar_selected_menu', '_none');
        if ($menu_block_id != '_none') :
          $menu_block = _block_get_renderable_array(_block_render_blocks(array(block_load('menu_block', $menu_block_id))));
          print render($menu_block);
          print render($toolbar['toolbar_user']);
        endif;
      ?>
    </div>
  <?php endif; ?>
</div>
