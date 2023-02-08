<div class="w-40 m-t-1">
    <h4><?= $label ?></h4>
    <label class="switch">
        <input class="check-toggle" type="checkbox" name="<?= $name ?>" value="true" <?php if ($checked) {
                                                                                            echo "checked";
                                                                                        } else {
                                                                                            echo "";
                                                                                        } ?>>
        <span class="slider round"></span>
    </label>
</div>