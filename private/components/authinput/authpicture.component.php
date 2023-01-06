<div class="w-40 m-t-1">
    <h4><?= $label ?></h4>
    <div class="input-thumbnail-container">
        <input class="input-thumbnail" name="<?= $name ?>" id="imgInp" type="file" />

        <img alt="d" id="img" class="input-thumbnail-picture" />

        <div class="input-thumbnail-fallback" id="imgFallback"></div>

        <div class="input-thumbnail-icon-container">
            <i class="input-thumbnail-icon fa fa-upload"></i>
        </div>
    </div>
</div>

<script>
    imgInp.onchange = evt => {
        const [file] = imgInp.files
        console.log(file);
        if (file) {
            img.src = URL.createObjectURL(file)
            disableImageFallback("none", "imgFallback");
            //disableImageFallback("block", "img");
        } else {
            disableImageFallback("block", "imgFallback");
            //disableImageFallback("none", "img");
        }
    }

    function disableImageFallback(style, element) {
        var x = document.getElementById("imgFallback");
        if (x.style.display === style) {
            x.style.display = "block";
            x.style.opacity = 0;
        } else {
            x.style.display = "none";
            x.style.opacity = 1;
        }
    }
</script>