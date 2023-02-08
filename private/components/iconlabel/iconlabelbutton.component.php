<button class="disable-button-style" id="<?= $id ?>">
    <div class="icon-label-container">
        <?php switch ($size):
            case "large": ?>

                <i class="<?= $icon ?> home-icon large-icon"></i>

                <h3 class="text-center home-icon-label"><?= $label ?></h3>
            <?php
                break;
            case "medium":
            ?>
                <i class="<?= $icon ?> home-icon medium-icon"></i>

                <h4 class="text-center home-icon-label"><?= $label ?></h4>
            <?php
                break;
            case "small":

            ?>
                <i class="<?= $icon ?> home-icon small-icon"></i>

                <p class="text-center home-icon-label"><?= $label ?></p>
        <?php break;
        endswitch; ?>

    </div>
</button>