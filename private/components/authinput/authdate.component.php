<div class="w-40 m-t-1 z-10">
    <h4><?= $label ?></h4>
    <input id="<?= $id ?>" class="auth-input ms-t-2" value="<?= $value ?>" type="<?= $type ?>" name="<?= $name ?>" placeholder="<?= $placeholder ?>" min="<?php echo date('Y-m-d\TH:i', time()); ?>" />
</div>