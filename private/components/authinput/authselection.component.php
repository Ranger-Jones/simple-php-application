<div class="w-40 m-t-1">
    <h4><?= $label ?></h4>
    <select class="auth-input ms-t-2" name="<?= $name ?>">
        <option value="">
            <p class="text-bold"><?= $placeholder ?></p>
        </option>
        <?php foreach ($options as $value => $option) : ?>
            <option <?= get_selected("course", $value) ?> value="<?= $value ?>">
                <p><?= $option ?></p>
            </option>
        <?php endforeach ?>
    </select>
</div>