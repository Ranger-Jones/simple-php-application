<a class="disable-text-decoration" href="<?= ROOT ?><?= $link ?>">
    <div class="icon-label-container">

        <i class="<?= $icon ?> <?= (str_contains($icon, 'fa-gear') or str_contains($icon, 'fa-arrow')) ? '' : 'home-icon' ?>"></i>

        <h3 class="text-center home-icon-label"><?= $label ?></h3>

    </div>
</a>